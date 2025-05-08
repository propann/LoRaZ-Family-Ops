# 🧟‍♂️ LoRaZ-Family-Ops

> "Quand l'apocalypse frappera, que restera-t-il ? Un réseau LoRa qui fonctionne."

## 📡 Objectif

Créer un réseau LoRa + GPS autonome et résilient, capable d'assurer la communication et le suivi en toutes circonstances (y compris les invasions zombies), pour protéger votre famille et vos compagnons à poils.

## 🧱 Architecture

- **Traceurs humains** : T-Beam Supreme (ESP32 + LoRa SX1262)
- **Traceurs animaux** : TinyLoRa E5 + collier étanche
- **Passerelles LoRa → MQTT** : Raspberry Pi 3B+ / Zero W (Dockerized)
- **Serveur central** : Raspberry Pi 5 (8 Go RAM, NVMe 500 Go)
- **Stockage** : NAS Synology (RAID 5, snapshots)
- **Énergie** : panneaux solaires + batteries LiFePO₄ (> 72h autonomie)

## 🔐 Canaux & PSK (version 2.0 – max 8)

| Index | Canal       | Fonction                          |
|-------|-------------|-----------------------------------|
| 0     | FAMILIA     | Communications familiales         |
| 1     | SOS         | Urgences 24/7                     |
| 2     | POSITION    | GPS temps réel et historique      |
| 3     | VOIX        | Push-to-Talk audio LoRa           |
| 4     | REPÈRES_AR  | Points d’intérêt en AR            |
| 5     | MÉTÉO       | Données météo & capteurs IoT      |
| 6     | MAJ_OTA     | Maintenance & OTA                 |
| 7     | ZOMBIE      | Test invasion, blagues & chaos     |

> ⚠️ Meshtastic limite à 8 canaux par appareil. Le canal de trop devient un cri dans le vide.

## 🚀 Installation rapide

```bash
git clone https://github.com/propann/LoRaZ-Family-Ops.git
cd LoRaZ-Family-Ops
bash scripts/setup-mosquitto.sh
cp -r flows/node-red/* ~/.node-red/flows/
bash scripts/ota-update.sh
```

## 📊 Visualisation & monitoring

- **Node-RED** : alertes geofence, mode recherche, scénario zombie
- **Grafana** : dashboards GPS, RSSI, batterie, BPM
- **InfluxDB** : stockage long terme, santé et position

## 📁 Organisation du dépôt

```
LoRaZ-Family-Ops/
├── scripts/
├── flows/
├── dashboards/
├── configs/
├── docs/
└── README.md
```

## 📚 Liens utiles

- 📖 [Meshtastic CLI](https://meshtastic.org/docs/software/cli/)
- 📡 [Réglages radio](https://meshtastic.org/docs/settings/)
- 🌩 [Node-RED](https://nodered.org/docs/)
- 📈 [Grafana](https://grafana.com/docs/grafana/latest/)
- ☁️ [InfluxDB v2](https://docs.influxdata.com/influxdb/v2.7/)
- 🧱 [Mosquitto MQTT](https://mosquitto.org/documentation/)
- 🧠 [Suricata IDS](https://docs.suricata.io/)

## 🧟 Règle d’édition

```bash
# Si ce script plante, c’est sûrement qu’un rôdeur l’a corrompu.
# Pour activer le beacon de détresse : priez, puis appuyez ici.
```

## 🤝 Contributions

1. Forkez.
2. Créez une branche (`feature/anti-zombie-mode`).
3. Commitez vos mutations.
4. Ouvrez une PR avant qu’il ne soit trop tard.

🧟‍♀️ *Protégez ce dépôt comme votre ration de cerveaux.*
