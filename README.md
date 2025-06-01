# 🛰️ LoRaZ-Family-Ops v2.1 — Réseau Post-Apocalyptique Familial

> *"Quand Internet tombe, la tribu parle encore."*

## 📦 Présentation du projet

**LoRaZ-Family-Ops** est un réseau de communication **autonome, chiffré et résilient** conçu pour fonctionner même en cas de coupure Internet, d'apocalypse zombie ou de rave dans les bois. Il connecte humains, animaux et capteurs via LoRa + GPS + MQTT, sur Raspberry Pi et modules ESP32/LoRa.

## 🎯 Objectifs

* Maintenir le lien familial sans réseau cellulaire
* Suivre les membres et animaux en temps réel
* Alerter et réagir en situation critique
* Tester des scénarios de crise (mode Zombie, ATAK)
* Collecter des données météo / capteurs / AR

## 🧱 Architecture

| Élément         | Matériel                               | Fonction principale                |
| --------------- | -------------------------------------- | ---------------------------------- |
| Traceur humain  | T-Beam Supreme                         | GPS, messages, PTT, BLE santé      |
| Traceur animal  | TinyLoRa + collier étanche             | Position, RSSI, géofence           |
| Station maison  | Pi 5 + module LoRa                     | Passerelle MQTT, serveur principal |
| Stations relais | Pi Zero / ESP32                        | Relais LoRa, nodes outdoor         |
| Backend         | Mosquitto, Node-RED, InfluxDB, Grafana | Traitement, alertes, dashboards    |

## 🔐 Canaux actifs (v2.1)

| Index | Nom canal | Usage                                                    |
| ----- | --------- | -------------------------------------------------------- |
| 0     | CLAN      | Messages familiaux chiffrés (texte, image, notification) |
| 1     | REDLINE   | Alerte immédiate + GPS + batterie (urgence ou détresse)  |
| 2     | ECHO      | Canal audio LoRa (Push-To-Talk, codecs basse latence)    |
| 3     | BUNKER    | Capteurs météo, capteurs BLE, données environnementales  |
| 4     | ZOMBIE    | Scénarios fun/test : invasion, bruit, alarmes            |
| 5     | ATTAK     | Liaison sécurisée avec ATAK Server (position, mission)   |
| 6     | MAJ\_OTA  | Mises à jour OTA + diagnostic maintenance                |
| 7     | METEO     | Données météorologiques & IoT (stations météo externes)  |

## ⚙️ Modes radio

| Mode      | Intervalle GPS | Puissance TX | Description                 |
| --------- | -------------- | ------------ | --------------------------- |
| Relax     | 300 s          | 17 dBm       | Éco batterie, usage normal  |
| Alert     | 15 s           | 23 dBm       | Urgence, recherche, SOS     |
| Recherche | 5 s            | 23 dBm       | Géolocalisation fine, radar |
| Party     | 120 s          | 18 dBm       | Fête, débit plus élevé      |
| Stealth   | 900 s          | 5 dBm        | Ultra discret               |

## 📊 Dashboards

* **Grafana** → Suivi GPS, capteurs, batterie
* **Node-RED** → Alertes geofencing, logique de modes, mode Zombie

## 🧪 En test / Dev

* Affichage POI AR sur Android (API + Node-RED)
* Monitoring santé (BLE → température, HRM)
* RFID collier + activation GPS
* Mode chiffré ATAK ↔ Meshtastic

## 🧟 Règle post-apo

Tout script/document contient au moins une ligne du style :

```bash
# Si ce script plante, considérez qu’un zombie l’a saboté.
```

## 📚 Docs utiles

* [Meshtastic CLI](https://meshtastic.org/docs/software/cli/)
* [Node-RED](https://nodered.org/docs/)
* [InfluxDB](https://docs.influxdata.com/influxdb/)
* [Grafana](https://grafana.com/docs/grafana/latest/)
* [ATAK Server](https://atakmaps.com/)

## 🧠 Contribuer

* Fork → test sur module → pull request
* Ou viens dans le bunker Discord 🧠

**Repo officiel** : [github.com/propann/LoRaZ-Family-Ops](https://github.com/propann/LoRaZ-Family-Ops)
