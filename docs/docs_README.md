
# LoRaZ-Family-Ops - Quartier Général Résilient contre l’Invasion Zombie

> **Statut :** Survivant / Version 2.0 – Dernière mise à jour : 2025-05-05  
> **Objectif :** Maintenir un réseau de communication LoRa autonome à l’épreuve des morts-vivants (et des coupures Internet).

---

## ☣️ Introduction

Bienvenue, opérateur.  
Vous venez d’entrer dans le sanctuaire numérique du **Réseau Familial Meshtastic**, alias **LoRaZ-Family-Ops**.  
Notre mission : créer un réseau GPS + LoRa + IoT + AR pour survivre, explorer, et rigoler en famille pendant l’apocalypse (ou un week-end au chalet).

---

## 📦 Contenu stratégique du dépôt

```bash
├── docker/              # Conteneurs Mosquitto, Node-RED, InfluxDB, Grafana, etc.
├── flows/               # Flows Node-RED pour géofencing, alertes, tracking zombie.
├── firmware/            # Scripts de flash et config T-Beam, TinyLoRa.
├── docs/                # La présente documentation, classée et blindée.
├── automation/          # Scripts Ansible, health-checks, OTA déploiements.
├── grafana_dashboards/  # JSONs des dashboards interactifs (localisation, santé, etc.)
└── assets/              # Images, logos, captures d’écran de survivants.
```

---

## 🧠 Technologies utilisées

- **Meshtastic** (ESP32 LoRa) – Communication texte/PTT sur réseau sans infrastructure.
- **MQTT (Mosquitto)** – Centralisation des messages dans le QG.
- **Node-RED** – Automatisation des alertes, géofencing, modes dynamiques.
- **InfluxDB + Grafana** – Logs, graphes, suivi santé, dashboards apocalyptiques.
- **Raspberry Pi 5** – Serveur central de commandement.
- **OTA, BLE, AR, Geofence** – Et tout ce qui peut retarder les zombies.

---

## 🧰 Modes de survie

| Mode        | GPS (s) | TX (dBm) | Usage                   |
|-------------|---------|----------|--------------------------|
| Relax       | 300     | 17       | Repos / surveillance passive |
| Alert       | 15      | 23       | Urgence : intrusion ou disparition |
| Scouting    | 60      | 20       | Repérage actif (ou chasse au trésor) |
| Recherche   | 5       | 23       | Localisation fine / bip sonar |
| Zombie      | 10      | 25       | Simulation panique générale |

---

## ⚠️ Sécurité des transmissions

Tous les canaux sont protégés avec des clés PSK 256 bits.
Les zombies ne peuvent pas lire les messages, sauf s’ils ont un doctorat en cryptographie (et un cerveau encore fonctionnel, peu probable).

---

## 🚑 Runbook incidents

Pour chaque panne (coupure, mesh figé, GPS perdu, OTA capricieuse), un déroulé minute par minute est disponible dans
[`operations_runbook.md`](operations_runbook.md). L’objectif : donner des réflexes prêts à l’emploi à toute la famille,
sans devoir fouiller dans les scripts ou se souvenir des commandes Docker/Meshtastic en pleine panique.

---

## 🧪 À venir / Backlog

- [ ] Génération de nouvelles zones géofencées via AR.
- [ ] Intégration de capteurs météo + qualité de l’air.
- [ ] Création de QR codes de config rapide pour traceurs.
- [ ] Documentation vidéo « mode survie pour grand-maman ».
- [ ] Portail Web (en React ou Flask, selon humeur post-apocalyptique).

---

## 📫 Contact de la Résistance

> Dépôt officiel : [github.com/propann/LoRaZ-Family-Ops](https://github.com/propann/LoRaZ-Family-Ops)  
> Canal de communication : `FAMILIA` (PSK dispo dans la doc interne)  
> Responsable bunker : @propann  
> Code zombie : `#13: Si vous lisez ceci, vous êtes la Résistance.`

---

> *“Les zombies n’attendent pas les commits. Préparez vos firmwares.”*  
> — Manuel de survie LoRaZ, édition 2025.
