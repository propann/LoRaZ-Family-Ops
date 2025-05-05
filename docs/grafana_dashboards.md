
# 📊 Dashboards Grafana – LoRaZ-Family-Ops

> **Objectif :** Visualiser en un clin d’œil l’état du réseau, la position des membres et le niveau de menace zombie.  
> Parce que même à la fin du monde, on aime les beaux graphiques.

---

## 📍 Dashboard principal : Localisation

### Nom : `carte_survivants`

- **Type** : Carte interactive (WorldMap)
- **Sources** : `tracking_data.gps.latitude`, `tracking_data.gps.longitude`
- **Fonctions** :
  - Affichage des traceurs en temps réel
  - Marqueurs colorés par canal (`FAMILIA`, `ZOMBIE_APOC`, etc.)
  - Popup info : nom du traceur, batterie, mode actif

> *“Ici, pas besoin de crier ‘Où est Kevin ?’ – il est sur la carte.”*

---

## ❤️ Dashboard santé

### Nom : `health_ops`

- **Sources** :
  - Température corporelle (`tracking_data.bme.temp`)
  - Fréquence cardiaque BLE (`tracking_data.ble.bpm`)
  - Niveau batterie (`tracking_data.battery.voltage`)
- **Fonctions** :
  - Graphe par utilisateur
  - Alertes si bpm < 50 ou > 140 (zombie ou trop de café ?)
  - Températures anormales détectées = push Telegram

---

## 📶 Dashboard RSSI & Réseau

### Nom : `signal_watch`

- **Sources** :
  - RSSI LoRa (`tracking_data.rssi`)
  - Taux de messages reçus par gateway
- **Fonctions** :
  - Courbe de qualité de signal
  - Heatmap selon heure/jour
  - Alarme si perte totale d’un traceur > 15 min

---

## 🧟‍♀️ Dashboard apocalypse

### Nom : `panic_button`

- **Sources** :
  - Mode actif du traceur
  - Messages sur canal `ZOMBIE_APOC`
- **Fonctions** :
  - Déclenchement d’animations (emoji zombies)
  - Message sonore via Node-RED
  - Clignotement RGB sur LED murales (prochain objectif)

---

## 🧪 À venir

- [ ] QR code vers chaque dashboard
- [ ] Dashboard imprimable version "papier bunker"
- [ ] Statistiques historiques par saison (été = plus de disparition d’enfants)

---

> *“Un bon dashboard, c’est la différence entre savoir où tu es... et finir en snack pour rôdeur.”*
