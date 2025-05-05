
# 🛠️ Documentation Matériel – LoRaZ-Family-Ops

> **Objectif :** Inventorier tout ce qui clignote, bippe, géolocalise et résiste aux intempéries (et aux morsures de zombie).

---

## 📡 Traceurs humains – T-Beam Supreme

- **Modèle** : LilyGO T-Beam Supreme
- **SoC** : ESP32
- **LoRa** : SX1262
- **Fonctions** :
  - GPS temps réel
  - Messages LoRa + PTT
  - Intégration capteurs BLE santé (température, fréquence cardiaque)
- **Modes compatibles** : Relax, Alert, Scouting, Recherche, Zombie

> *Remarque : Ces unités sont comme les scouts... sauf qu’elles ne fuient pas les zombies.*

---

## 🐶 Traceurs animaux – TinyLoRa E5

- **Modèle** : TinyLoRa E5 + collier étanche
- **Connectivité** : LoRa uniquement (sans Wi-Fi)
- **Fonctions** :
  - Position GPS via gateway
  - RSSI pour détection de sortie de zone (geofencing)
  - Alertes sur canal `PERRITOS`

> *“Bon chien. Très bon chien. Mais ne le perds pas de vue.”*

---

## 🧱 Passerelles LoRa → MQTT

- **Matériel** : Raspberry Pi 3B+ ou Pi Zero W
- **Logiciel** :
  - Docker : Meshtastic Gateway
  - Mosquitto MQTT
- **Fonction** : Bridge entre le monde LoRa et le QG (serveur central)

---

## 🧠 Serveur central – QG familial

- **Matériel** : Raspberry Pi 5 – 8 Go RAM + SSD NVMe 500 Go
- **Conteneurs** :
  - Mosquitto
  - Node-RED
  - InfluxDB
  - Grafana
  - ATAK-Server
  - Meshtastic-Gateway
  - Suricata + ATT&CK Navigator
- **Alimentation** : Batterie LiFePO₄ + panneaux solaires
- **Fonction** : Stockage, traitements, dashboard, alertes, géofencing

---

## 🔌 Alimentation & Autonomie

- **Type** : Batteries LiFePO₄
- **Alimentation** :
  - Traceurs : USB ou module solaire
  - Gateways : USB + batterie externe
  - Serveur : Solaire + UPS autonome
- **Autonomie estimée** : > 72 heures

> *“Pas d’électricité ? Pas de problème. Les zombies non plus n’ont pas de réseau.”*

---

## 📦 Divers

- **Boîtiers étanches IP67**
- **Antennes LoRa longues portées (868 MHz)**
- **Buzzer pour mode sonar**
- **Modules PTT intégrés**

---

## 📌 À venir

- [ ] Ajout capteur météo sur gateway (Temp/Hum/UV)
- [ ] Intégration de modules E-Ink pour status passif
- [ ] Étude de backup réseau via satellite LoRa

> *“Si c’est mobile, traçable ou alimenté… on le documente.”*
