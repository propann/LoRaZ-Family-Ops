# 📡 Documentation LoRaZ-Family-Ops

> "La survie passe par la communication. Même quand les zombies ont mangé Internet."

## 📚 Table des matières

1. [Vue d'ensemble](#vue-densemble)
2. [Installation](#installation)
3. [Matériel](#matériel)
4. [Configuration](#configuration)
5. [Utilisation](#utilisation)
6. [Maintenance](#maintenance)
7. [Dépannage](#dépannage)

## Vue d'ensemble

### Le concept
Un réseau familial autonome basé sur LoRa qui permet de :
- Communiquer sans Internet
- Localiser la famille et les animaux
- Alerter en cas de danger
- Survivre à l'apocalypse zombie

### Architecture
- **Modules portables** : T-Beam pour humains
- **Colliers** : TinyLoRa pour animaux
- **Base maison** : Raspberry Pi + écran
- **Relais mobiles** : Dans véhicules/points stratégiques

## Installation

### Prérequis
- Raspberry Pi (3B+, 4 ou 5)
- Modules T-Beam/TinyLoRa
- Panneau solaire + batterie
- Tournevis et câbles
- Volonté de survivre

### Étapes d'installation
```bash
# 1. Système de base
sudo apt update && sudo apt upgrade -y
git clone https://github.com/propann/LoRaZ-Family-Ops.git
cd LoRaZ-Family-Ops

# 2. Dépendances
bash scripts/install.sh

# 3. Configuration
bash scripts/setup-network.sh

# 4. Démarrage
bash scripts/start-server.sh
```

## Matériel

### Module Humain (T-Beam)
- **Usage** : Communication et localisation
- **Autonomie** : 3-5 jours
- **Fonctions** :
  - Messages texte
  - GPS
  - Bouton SOS
  - Mode recherche
  - Écran OLED

### Collier Animal (TinyLoRa)
- **Usage** : Suivi et sécurité
- **Autonomie** : 5-7 jours
- **Fonctions** :
  - GPS
  - Alerte sortie de zone
  - Beeper de recherche
  - Détection RFID

### Base Maison (Raspberry Pi)
- **Usage** : Centre de contrôle
- **Alimentation** : Solaire + batterie
- **Services** :
  - MQTT (Mosquitto)
  - Node-RED
  - InfluxDB
  - Grafana
  - Meshtastic Gateway

## Configuration

### Canaux LoRa
| Canal | Usage | Description |
|-------|-------|-------------|
| FAMILIA | Principal | Communications générales |
| ALERTA_ROJA | Urgence | SOS et alertes |
| PERRITOS | Animaux | Suivi des colliers |
| CASTILLO | Maison | Communications base |
| TESORO | Recherche | Mode recherche/radar |
| ZOMBIE_APOC | Test | Simulations d'invasion |

### Modes de fonctionnement
- **Relax** : Normal, économie d'énergie
  - GPS : 300s
  - TX : 17 dBm
- **Alerte** : Urgence
  - GPS : 15s
  - TX : 23 dBm
- **Recherche** : Localisation
  - GPS : 5s
  - Beeper actif
- **Zombie** : Test
  - GPS : 10s
  - TX max
  - Alertes frénétiques

## Utilisation

### Interface Web
Accès : `http://<IP-Raspberry>:1880/ui`

#### Dashboards disponibles
- Carte en direct
- État des batteries
- Historique positions
- Alertes actives
- Messages

### Commandes module
- **Appui long** : SOS
- **Double clic** : OK
- **Rotation** : Canal
- **PTT** : Message vocal

### Alertes automatiques
- Sortie de zone
- Batterie faible
- Perte de signal
- Intrusion détectée
- Invasion zombie

## Maintenance

### Tâches quotidiennes
- Vérifier les batteries
- Contrôler les alertes
- Nettoyer les logs

### Tâches hebdomadaires
- Backup InfluxDB
- Mise à jour firmware
- Test invasion zombie

### Tâches mensuelles
- Vérification antennes
- Nettoyage boîtiers
- Test autonomie solaire

## Dépannage

### Problèmes courants

#### Module ne répond plus
1. Vérifier batterie
2. Reset hardware
3. Reflash firmware
4. Prier

#### Perte de signal
1. Vérifier antenne
2. Changer position
3. Augmenter puissance
4. Déployer relais

#### Base hors-ligne
1. Contrôler alimentation
2. Vérifier services
3. Redémarrer Pi
4. Plan B : mode autonome

### Codes d'erreur
- **ERR01** : Batterie critique
- **ERR02** : GPS perdu
- **ERR03** : LoRa mort
- **ERR04** : Zombie détecté
- **ERR05** : Invasion en cours

## Annexes

### Matériel recommandé
- Batteries de rechange
- Antennes supplémentaires
- Câbles USB
- Tournevis
- Machette (zombies)

### Ressources
- [Meshtastic](https://meshtastic.org)
- [Node-RED](https://nodered.org)
- [Grafana](https://grafana.com)
- [Guide survie CDC](https://www.cdc.gov/cpr/zombie/index.htm)

---

> "Un réseau bien documenté est un réseau qui survit."