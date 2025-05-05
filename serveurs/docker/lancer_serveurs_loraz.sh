
#!/bin/bash
# 🚀 Script de lancement modulaire pour les serveurs LauraZFamilyOops
# Apocalypse Ready v1.0

echo "💥 Bienvenue dans le Lanceur de Survie Numérique"
echo "📦 Chargement des modules disponibles..."

# Configuration modifiable par l'utilisateur
CONFIG_DIR="$HOME/LauraZFamilyOops/serveurs/docker"
DATA_DIR="$HOME/LauraZFamilyOops/data"

# Création des volumes de données (si non existants)
mkdir -p $DATA_DIR/influxdb $DATA_DIR/grafana $DATA_DIR/mosquitto $DATA_DIR/node-red

echo ""
echo "🔧 Que veux-tu démarrer ?"
echo "1) Mosquitto"
echo "2) Node-RED"
echo "3) InfluxDB"
echo "4) Grafana"
echo "5) Meshtastic-Gateway"
echo "6) ATAK Server"
echo "7) Suricata"
echo "8) TOUS (mode QG apocalypse)"
echo "9) QUITTER"
echo ""

read -p "Fais ton choix (1-9) : " CHOICE

run_container() {
  SERVICE=$1
  echo "🛠️ Démarrage du conteneur $SERVICE..."
  docker build -t loraz/$SERVICE $CONFIG_DIR/$SERVICE
  docker run -d --name $SERVICE --restart=always \
    -v $DATA_DIR/$SERVICE:/data \
    -p $2 \
    loraz/$SERVICE
}

case $CHOICE in
  1) run_container "mosquitto" "1883:1883" ;;
  2) run_container "node-red" "1880:1880" ;;
  3) run_container "influxdb" "8086:8086" ;;
  4) run_container "grafana" "3000:3000" ;;
  5) run_container "meshtastic_gateway" "" ;;
  6) run_container "atak_server" "8443:8443" ;;
  7) run_container "suricata" "" ;;
  8)
    for SVC in mosquitto node-red influxdb grafana meshtastic_gateway atak_server suricata; do
      run_container "$SVC" ""
    done ;;
  9) echo "👋 Fin du programme. Garde la radio allumée." && exit 0 ;;
  *) echo "Option invalide. Recommence." ;;
esac
