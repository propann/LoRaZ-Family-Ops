🧟‍♂️ LoRaZ-Family-Ops

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

## 🔐 Canaux & PSK (Pré-partagés)

| Index | Canal       | Fonction                          |
|-------|-------------|-----------------------------------|
| 0     | FAMILIA     | Communications générales familiales |
| 1     | SOS         | Urgences 24/7                     |
| 2     | POSITION    | GPS temps réel et historique     |
| 3     | VOIX        | Push-to-Talk audio LoRa          |
| 4     | REPÈRES_AR  | Points d’intérêt en AR           |
| 5     | RÉSERVE     | Canal libre                      |
| 6     | MÉTÉO       | Données IoT & météo              |
| 7     | MAJ_OTA     | Maintenance & mise à jour OTA    |
| 8     | ZOMBIE      | Mode apocalypse/test invasion     |

> Tous les canaux sont chiffrés avec un PSK (voir `/scripts/generate-channels.sh`).

## 🚀 Installation rapide

```bash
# Clone le dépôt du dernier espoir
git clone https://github.com/propann/LoRaZ-Family-Ops.git
cd LoRaZ-Family-Ops

# Lance la config des passerelles
bash scripts/setup-mosquitto.sh

# Déploie les flows Node-RED
cp -r flows/node-red/* ~/.node-red/flows/

# Flash OTA les traceurs de la résistance
bash scripts/ota-update.sh
```

## 📊 Visualisation & monitoring

- **Node-RED** : alertes géofence, scénario zombie, localisation.
- **Grafana** : dashboards GPS, RSSI, batterie, fréquence cardiaque.
- **InfluxDB** : stockage historique des données (position, capteurs).

## 🛠️ Dossiers

```
LoRaZ-Family-Ops/
├── scripts/        # Install, OTA, MQTT, CLI Meshtastic
├── flows/          # Flows Node-RED (.json)
├── dashboards/     # Dashboards Grafana exportés
├── configs/        # Config Mosquitto, Meshtastic Gateway
├── docs/           # Guides, notices de survie
└── README.md       # Ce fichier, votre bible post-apocalypse
```

## 📚 Liens utiles

- 📖 https://meshtastic.org/docs/software/cli/
- 📡 https://meshtastic.org/docs/settings/
- 🌩 https://nodered.org/docs/
- 📈 https://grafana.com/docs/grafana/latest/
- ☁️ https://docs.influxdata.com/influxdb/v2.7/
- 🧱 https://mosquitto.org/documentation/
- 🧠 https://docs.suricata.io/

## 🧟 Règle d’édition (v2.0)

```python
# Si ce script plante, c’est sûrement qu’un rôdeur l’a corrompu.
# Pour activer le beacon de détresse : priez, puis appuyez ici.
```

## 🤝 Contributions bienvenues !

1. Forkez.
2. Créez une branche (`feature/anti-zombie-mode`).
3. Poussez votre chaos organisé.
4. Ouvrez une PR avant que les morts ne marchent à nouveau.

🧟‍♀️ *Ce dépôt est votre dernier rempart contre le silence numérique. Protégez-le comme s’il contenait votre ration de cerveaux.*