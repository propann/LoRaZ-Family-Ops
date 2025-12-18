
# 🤖 Automatisation & Scripts – LoRaZ-Family-Ops

> **Objectif :** Tout ce qui peut être automatisé, doit l’être.  
> Moins de clics = plus de temps pour échapper aux zombies.

---

## 🧰 Outils utilisés

- **Ansible** – Pour le déploiement à distance et les mises à jour
- **Python CLI** – Contrôle des traceurs Meshtastic
- **Bash** – Scripts de santé, backup et configuration rapide
- **Node-RED** – Flows d’automatisation MQTT et alertes
- **Crontab** – Tâches programmées

---

## 🚀 Déploiement Full Stack (via Ansible)

Structure du playbook :

```
📁 ansible/
├── inventory.ini
├── deploy.yml
├── roles/
│   ├── mqtt/
│   ├── node-red/
│   ├── influxdb/
│   └── grafana/
```

Exécution :

```bash
ansible-playbook -i inventory.ini deploy.yml
```

Effets :
- Installe tous les conteneurs
- Configure les ports, volumes et persistances
- Redémarre les services si besoin

---

## ⚙️ Meshtastic CLI – Automatisation des traceurs

- Création de canaux :
  ```bash
  meshtastic --setchan FAMILIA --pskref ${MESH_PSK_REF_FAMILIA}
  ```
- Changement de mode :
  ```bash
  meshtastic --set device.mode scouting
  ```
- Déploiement firmware :
  ```bash
  meshtastic --flash
  ```

> *“Un traceur sans canal, c’est un survivant qui parle dans le vide.”*

---

## 🔁 Scripts de santé & maintenance

### Health-check.sh

- Ping traceurs
- Vérifie espace disque
- Statut conteneurs Docker
- Notifications Telegram

### Backup.sh

- Sauvegarde InfluxDB et flows Node-RED
- Sync avec NAS
- Snapshot tous les soirs à 3h13 (heure maudite)

---

## 📡 OTA et rollback

- Mode Maintenance requis
- Déploiement :
  ```bash
  ./ota_push_all.sh firmware_v3.6.4.bin
  ```
- Rollback possible :
  ```bash
  ./ota_revert.sh
  ```

> *“Toujours avoir un firmware de secours. Les zombies ne respectent pas les releases stables.”*

---

## 📌 À venir

- [ ] Interface Web pour déclencher les playbooks
- [ ] Détection automatique de traceurs déconnectés
- [ ] Assistant vocal (Core2) pour lancer les scripts d'urgence

> *“Un bon script vaut mieux qu’un sprint face à un rôdeur.”*
