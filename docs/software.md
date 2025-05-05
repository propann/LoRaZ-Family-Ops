
# 🧬 Documentation Logicielle – LoRaZ-Family-Ops

> **Objectif :** Cartographier les cerveaux numériques de l’opération. Des firmwares aux conteneurs, tout doit survivre à une panne ou à une invasion zombie.

---

## 📲 Firmware des Traceurs

### T-Beam Supreme

- **Firmware** : Meshtastic (v3.6.4 recommandé)
- **Flash via** : Python CLI (`meshtastic --flash`), PlatformIO ou OTA (en mode Maintenance)
- **Particularités** :
  - Configuration GPS/LoRa via CLI
  - Activation des capteurs BLE de santé
  - Modes personnalisés (Relax, Zombie…)

### TinyLoRa E5

- **Firmware** : LoRa Ping/Beacon personnalisé
- **Flash via** : ST-LINK ou UART TTL (selon modèle)
- **Fonction** :
  - Envoi de trames LoRa simples avec ID + niveau RSSI
  - Mode économie d’énergie extrême

---

## ⚙️ Logiciels Serveur (via Docker)

### MQTT – Mosquitto

- **Rôle** : Collecte tous les messages LoRa entrants
- **Port** : 1883 (non sécurisé), 8883 (TLS)
- **Backup config** : `/etc/mosquitto/`
- **Persistance activée**

### Node-RED

- **Rôle** : Cerveau logique des flows
- **Plugins installés** :
  - `node-red-dashboard`
  - `node-red-contrib-mqtt-broker`
  - `node-red-node-geofence`
- **Flows actifs** :
  - Tracking + alertes zones
  - Monitoring santé
  - Alertes zombie

### InfluxDB + Grafana

- **InfluxDB** :
  - Base `tracking_data`
  - Stockage : positions, RSSI, BPM, température
- **Grafana** :
  - Dashboards dynamiques par canal
  - Cartes interactives + graphiques santé

---

## 🛰️ Passerelle Meshtastic-Gateway

- **Image Docker** : `ghcr.io/meshtastic/gateway`
- **Bridge série ou USB avec les traceurs**
- **Connexion à Mosquitto** (pub/sub vers topic MQTT)

---

## 🛠️ OTA & Scripts

- **Outils** :
  - Python `meshtastic CLI`
  - Bash pour déploiements en masse
  - Ansible pour serveurs distants
- **Zombies inclus** :
  - Chaque script est blindé de commentaires sarcastiques en cas d’échec.

---

## 🔐 Sécurité

- Chiffrement AES-256 sur tous les canaux
- Accès SSH restreint via clés
- VPN Wireguard optionnel
- Suricata pour détection d’intrusion

---

## 📌 À venir

- [ ] Système de rollback OTA en cas de firmware zombie
- [ ] Script de synchronisation Node-RED → Git (versionning flows)
- [ ] Conteneur Flask pour interface Web simplifiée

> *“Un firmware bien configuré, c’est une horde évitée.”*
