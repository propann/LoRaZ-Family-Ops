# 🛠️ Runbook Opérations & Incidents – LoRaZ-Family-Ops

> **But :** réagir vite quand quelque chose casse (courant coupé, passerelle muette, MQTT en PLS).
> Chaque section tient en quelques commandes à dérouler, même dans le stress.

---

## 📋 Pré-requis rapides

- Accès SSH au serveur principal (Pi 5) et au NAS si présent.
- Identifiants des conteneurs Docker (Mosquitto, Node-RED, InfluxDB, Grafana).
- Sauvegardes locales récentes (`automation/backup.sh`).
- Chargeur ou batterie d’appoint pour le matériel critique.

---

## 🚨 Scénarios fréquents et réponses

### 1) Coupure de courant sur le QG
- Bascule sur l’alimentation de secours (UPS ou powerbank 30 W min).
- Vérifier l’état des services :
  ```bash
  sudo systemctl status docker
  docker ps --format "table {{.Names}}\t{{.Status}}"
  ```
- Si un conteneur est KO, relancer proprement :
  ```bash
  docker restart mosquitto node-red influxdb grafana
  ```
- Contrôler la synchro de l’heure (les horloges folles cassent les certificats) :
  ```bash
  timedatectl status
  sudo systemctl restart systemd-timesyncd
  ```

### 2) Plus de messages LoRa / mesh figé
- Checker la portée : inspecter l’antenne, déplacer la passerelle quelques mètres.
- Sur un traceur, lire l’état radio :
  ```bash
  meshtastic --info
  meshtastic --nodes
  ```
- Forcer un redémarrage propre du traceur :
  ```bash
  meshtastic --reboot
  ```
- Si tout est silencieux, réémettre un broadcast de test :
  ```bash
  meshtastic --sendtext "PING-QG" --ch-index 0
  ```

### 3) MQTT ou Node-RED en panne
- Logs rapides :
  ```bash
  docker logs --tail 50 mosquitto
  docker logs --tail 50 node-red
  ```
- Recharger la stack :
  ```bash
  docker compose -f docker/stack.yml up -d --force-recreate mosquitto node-red
  ```
- Si la base InfluxDB refuse les écritures, purger le volume temporaire (dernier recours) :
  ```bash
  docker stop influxdb
  docker volume rm docker_influxdb_tmp || true
  docker start influxdb
  ```

### 4) GPS imprécis ou absent
- Vérifier l’acquisition :
  ```bash
  meshtastic --get gps
  ```
- Passer temporairement en mode "Recherche" pour densifier les fixes :
  ```bash
  meshtastic --set device.mode search
  ```
- Se placer à l’extérieur 2 minutes, rebooter le module si la précision > 30 m.

### 5) OTA ratée / firmware corrompu
- Basculer le traceur en **Mode Maintenance**.
- Relancer le push :
  ```bash
  ./automation/ota_push_all.sh firmware_v3.6.4.bin
  ```
- Si l’appareil reste bloqué, utiliser le rollback :
  ```bash
  ./automation/ota_revert.sh
  ```
- Noter le numéro de série et le canal utilisé pour suivi post-mortem.

---

## ✅ Checklists post-incident

- [ ] GPS fixe sous 15 m pour au moins 2 traceurs humains.
- [ ] RSSI moyen > -110 dBm entre QG et relais extérieurs.
- [ ] Messages MQTT qui remontent dans Grafana (table `mqtt_consumer`).
- [ ] Sauvegarde relancée : `automation/backup.sh` exécuté dans les 2 h.
- [ ] Documenter l’incident dans `docs/rapports/` avec date et symptômes.

---

## 💡 Astuces terrain

- Toujours garder un traceur en mode **Relax** pour servir de référence silencieuse.
- Afficher les modes actifs dans Node-RED pour détecter un déclenchement zombie intempestif.
- En expédition, noter les positions des relais improvisés (arbres, poteaux) dans `hardware.md`.
- Préparer à l’avance une clé USB avec les firmwares stables + scripts Bash essentiels.

> *"On ne stresse pas, on déroule le runbook, et on boit un café après."*
