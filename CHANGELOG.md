# 📜 CHANGELOG – LoRaZ-Family-Ops

Toutes les versions du réseau qui sauve des vies (et accessoirement repousse les zombies).

---

## [v2.0.0] – 2025-05-08
### 🎉 Nouveautés
- Refonte complète du projet pour version familiale autonome & résiliente
- Nouveaux canaux clairs et chiffrés (FAMILIA, SOS, ZOMBIE…)
- Intégration AR (REPÈRES_AR) avec affichage POI en réalité augmentée
- Monitoring santé via capteurs BLE (température, rythme cardiaque)
- Mode “ZOMBIE” pour tests d’invasion & beacons frénétiques

### 🛠 Améliorations
- Scripts OTA pour T-Beam & TinyLoRa
- Dashboard Grafana remanié avec carte interactive, courbes GPS & capteurs
- Ajout de flows Node-RED : geofence multi-zone, alerting, radar-beep
- Intégration de Suricata IDS & ATT&CK Navigator dans le stack
- Organisation du dépôt GitHub : `/scripts`, `/flows`, `/dashboards`, `/docs`

### ⚠️ Modifications importantes
- Le canal FIESTA a été renommé FAMILIA pour un usage plus explicite
- Suppression du canal « santé » dédié (données intégrées à POSITION)
- Refactor complet du README en style apocalypse + instructions techniques

---

## [v1.0.0] – 2024-11-01
- Prototype initial avec 3 canaux (général, urgence, géoloc)
- Passerelle MQTT sur Raspberry Pi 3B+
- Node-RED basique + MQTT + script de test LoRa

---

*Prochaine version (v2.1) : prise en charge des alertes par vibration, synthèse vocale sur traceur, et scan RFID des zombies approchants…*