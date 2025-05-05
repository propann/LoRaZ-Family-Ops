#!/bin/bash
# Installation basique d'ATAK Server sur Raspberry Pi 5 (Debian-based)

echo "🔧 Mise à jour du système..."
sudo apt update && sudo apt upgrade -y

echo "📦 Installation des dépendances Java (OpenJDK 17 recommandé)..."
sudo apt install -y openjdk-17-jdk unzip wget curl

echo "📁 Création d’un dossier pour ATAK Server..."
mkdir -p ~/atak-server
cd ~/atak-server

echo "⬇️ Téléchargement d’ATAK Server depuis le GitHub officiel..."
wget https://github.com/deptofdefense/atak/releases/latest/download/atakserver.zip -O atakserver.zip

echo "📂 Extraction..."
unzip atakserver.zip

echo "📜 Instructions supplémentaires :"
echo "1. Lire le fichier README fourni par ATAK pour la configuration initiale"
echo "2. Lancer le serveur avec la commande :"
echo "   java -jar atakserver.jar"
echo "3. Accéder via navigateur à https://<IP_Pi>:8443"
echo "4. Ajouter des utilisateurs et certifs si besoin"

echo "✅ Installation terminée. Configuration manuelle requise."
