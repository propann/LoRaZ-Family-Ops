README – Configuration Grafana pour Réseau Familial Meshtastic
=======================================================================

📌 Objectif :
--------------
Grafana est utilisé pour afficher en temps réel et en historique les données du réseau LoRa familial :
- Position GPS des modules
- Niveau de batterie
- Température ambiante
- Nombre de satellites
- Événements (géofencing, alertes, modes)

🔧 Pré-requis :
---------------
- InfluxDB doit être installé et configuré avec la base : `meshtastic`
- Node-RED alimente InfluxDB via les flows 3 et 8
- Grafana accède à InfluxDB (port 8086) sur localhost ou IP du Pi

🔗 Connexion InfluxDB à Grafana :
--------------------------------
1. Se connecter à Grafana (http://<IP_PI>:3000)
2. Aller dans : ⚙️ Configuration > Data Sources > Add data source
3. Choisir : **InfluxDB**
4. Configuration :
   - URL : `http://localhost:8086`
   - Database : `meshtastic`
   - Version : InfluxQL
   - Auth : off ou selon config

✅ Tableaux de bord à créer :
------------------------------

📍 Dashboard 1 – **Carte GPS des modules**
- Source : `positions`
- Type : Worldmap Panel ou Geomap
- Champs : `latitude`, `longitude`, `tracker`
- Affiche la dernière position connue de chaque node

🔋 Dashboard 2 – **État des modules**
- Source : `sante_modules`
- Afficher par module :
  - Courbe batterie (field `batterie`)
  - Température (field `temperature`)
  - Satellites visibles (field `satellites`)

🚨 Dashboard 3 – **Événements / Alertes**
- Source : `positions` ou `events`
- Table ou log textuel des entrées critiques
- Ajout possible de annotation rule ou panneau texte pour journal d’alerte

🧪 Dashboard 4 – **Debug & Test**
- Affiche tout ce qui passe dans la base
- Pour développement ou test de flows

📁 Où stocker ce fichier :
--------------------------
Placer ce fichier dans `/home/pi/grafana/docs/` ou `~/meshtastic-flows/docs/`

📤 Export/Import :
------------------
Une fois les dashboards créés :
- Exporter via ⚙️ icône du tableau > "Export JSON"
- Tu peux les stocker avec les flows dans une archive complète

📦 Source :
Projet Réseau Familial Meshtastic
2025 – Assistant OpenAI
