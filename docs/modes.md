
# 🎛️ Modes de Fonctionnement – LoRaZ-Family-Ops

> **Objectif :** Chaque mode est une réponse à une situation. Du barbecue familial à l’invasion zombie, tout est prévu.  
> Ce document répertorie les réglages GPS, puissance et usages de chaque mode.

---

## 📘 Détail des Modes

| Mode        | GPS (intervalle) | TX (dBm) | Usage                                                   |
|-------------|------------------|----------|----------------------------------------------------------|
| Relax       | 300 s            | 17       | Mode veille économique pour les moments tranquilles      |
| Alert       | 15 s             | 23       | Déclenché en cas d’urgence, disparition, intrusion       |
| Scouting    | 60 s             | 20       | Exploration active, randonnées, repérage                 |
| Recherche   | 5 s              | 23       | Bip sonar, localisation rapide, geofencing renforcé      |
| Zombie      | 10 s             | 25       | Simulation panique ou tests réseaux sous stress extrême  |
| Low-Power   | 600 s            | 10       | Autonomie maximale, suivi minimal                        |
| Stealth     | 900 s            | 5        | Mode discret, ultra-faible émission, espionnage zombie   |
| Party       | 120 s            | 18       | Échanges légers et ambiance festive (canal FIESTA)       |
| Maintenance | manuel           | manuel   | OTA, debug, configuration technique                      |

---

## 🎯 Gestion des Modes

### Activation

- Via **Meshtastic CLI** :
  ```bash
  meshtastic --set device.mode relax
  ```
- Ou via **Node-RED** en MQTT :
  - Topic : `set/mode`
  - Payload : `"relax"`, `"alert"`, etc.

### Application

Les traceurs adoptent immédiatement la nouvelle configuration :
- Changement du taux GPS
- Puissance LoRa modifiée
- Tonalité du buzzer ajustée

---

## 🔊 Buzzer – Sonar-beep

Selon le mode actif, le traceur peut émettre un bip régulier :
- **Recherche** : Bip rapide, directionnel (plus proche = plus fort)
- **Zombie** : Bip frénétique, simulant une alarme massive
- **Stealth** : Pas de son (zombie friendly)

---

## 🚦Canaux liés aux modes

| Canal       | Usage                      |
|-------------|----------------------------|
| FAMILIA     | Standard familial          |
| ALERTA_ROJA | Urgences                   |
| FIESTA      | Mode Party (disco inclus)  |
| ZOMBIE_APOC | Simulation & test stress   |
| PERRITOS    | Géofencing animaux         |

---

## 🧪 À venir

- [ ] Synchronisation automatique des modes avec géolocalisation
- [ ] AR : basculement de mode en pointant un lieu/QR code
- [ ] Interface graphique sur Core2 pour sélection rapide

> *“Choisis ton mode… ou les zombies le feront pour toi.”*
