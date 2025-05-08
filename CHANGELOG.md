# 📜 CHANGELOG – LoRaZ-Family-Ops

## [v2.0.0] – 2025-05-08
### 🎉 Nouveautés
- Refonte complète du projet pour version familiale autonome & résiliente
- Limitation stricte à 8 canaux (Meshtastic)
- Intégration AR (REPÈRES_AR) avec affichage POI en réalité augmentée
- Monitoring santé via capteurs BLE (température, rythme cardiaque)
- Mode “ZOMBIE” pour tests d’invasion & beacons frénétiques

### 🛠 Améliorations
- Scripts OTA pour T-Beam & TinyLoRa
- Dashboard Grafana remanié avec carte interactive, courbes GPS & capteurs
- Ajout de flows Node-RED : geofence multi-zone, alerting, radar-beep
- Intégration de Suricata IDS & ATT&CK Navigator dans le stack
- Organisation du dépôt GitHub : /scripts, /flows, /dashboards, /docs

### ⚠️ Modifications importantes
- Suppression du canal santé dédié (fusion dans POSITION)
- Refonte du README GitHub avec instructions et humour post-apo

## [v1.0.0] – 2024-11-01
- Prototype initial avec 3 canaux (général, urgence, géoloc)
- Passerelle MQTT sur Raspberry Pi 3B+
- Node-RED basique + MQTT + script de test LoRa

---

🧟 *Chaque release nous rapproche de la survie... ou de la prochaine attaque.*
