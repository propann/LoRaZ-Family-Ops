README – Réseau Familial Meshtastic avec Node-RED
=================================================

📌 Objectif :
--------------
Node-RED est utilisé comme cœur logique pour automatiser, visualiser et interagir avec le réseau LoRa familial Meshtastic.
Il reçoit les données des modules via MQTT (depuis Mosquitto), déclenche des alertes, stocke les positions GPS, envoie des commandes, etc.

🔗 Connexion :
--------------
- Les modules Meshtastic communiquent via LoRa
- Une passerelle USB (module fixe) connectée au Raspberry Pi 5 publie les messages vers Mosquitto (MQTT)
- Node-RED est abonné aux topics MQTT (`msh/EU_868/#`)

🔧 Composants utilisés :
-------------------------
- Mosquitto (MQTT broker)
- Node-RED
- InfluxDB (pour stocker les données)
- Grafana (pour visualiser les courbes et cartes)
- Meshtastic Gateway (connectée en USB)

🧩 Flows Node-RED :
--------------------
Les flows suivants sont inclus :
1. `01_debug_meshtastic.json` – Affiche tout le trafic MQTT Meshtastic
2. `02_geofencing_maison.json` – Détecte si un module sort de la zone maison
3. `03_gps_influxdb.json` – Stocke les positions dans InfluxDB
4. `04_bouton_urgence.json` – Déclenche une alerte si un message texte = "URGENCE"
5. `05_radar_beep.json` – Radar pour retrouver un module (chien, enfant)
6. `06_modes_bascule.json` – Interface pour changer le mode global (Relax, Fiesta, etc.)
7. `07_ota_reboot.json` – Permet de redémarrer ou mettre en OTA un module
8. `08_monitoring_sante.json` – Récupère température, batterie, satellites
9. `09_planification_modes.json` – Bascule automatique jour/nuit
10. `10_dashboard_famille.json` – Interface simple pour la maison (boutons)

📁 Où placer ce fichier :
--------------------------
Dans le répertoire `/home/pi/.node-red/docs/` ou dans le dossier `meshtastic-flows/` selon ton organisation.

Astuce :
--------
Ajoute un bouton dans Node-RED pour afficher ce README en cliquant (via file-inject ou dashboard).

Auteur : Assistant OpenAI
Date : 2025
