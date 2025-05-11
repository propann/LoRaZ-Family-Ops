# 🧟‍♂️ LoRaZ-Family-Ops

> "Quand les zombies couperont Internet, nous aurons encore LoRa."

## 🎯 C'est quoi ?

Un réseau de communication familial autonome qui utilise LoRa et GPS pour :
- Localiser les membres de la famille
- Envoyer des messages même sans Internet
- Suivre vos animaux de compagnie
- Alerter en cas de danger
- Survivre à l'apocalypse zombie

## 🔧 Comment ça marche ?

1. **Pour les humains** : Module T-Beam avec écran
   - Messages texte
   - Position GPS
   - Bouton panique
   - Mode recherche

2. **Pour les animaux** : Collier TinyLoRa
   - GPS
   - Alerte si sortie de zone
   - Mode recherche sonore

3. **À la maison** : Raspberry Pi + écran
   - Carte en temps réel
   - Alertes
   - Stockage des données
   - Alimentation solaire

## 🚀 Installation rapide

```bash
# 1. Cloner le projet
git clone https://github.com/propann/LoRaZ-Family-Ops.git
cd LoRaZ-Family-Ops

# 2. Installer les dépendances
bash scripts/install.sh

# 3. Configurer le réseau
bash scripts/setup-network.sh

# 4. Démarrer le serveur
bash scripts/start-server.sh
```

## 📱 Utilisation

### Modes disponibles
- **Relax** : Mode normal, économie d'énergie
- **Alerte** : Urgence, position rapide
- **Recherche** : Pour retrouver quelqu'un/quelque chose
- **Zombie** : Test d'invasion (formation uniquement)

### Commandes de base
- Appui long = SOS
- Double clic = OK
- Rotation = changer de canal

## 🗺️ Interface web

Accès : `http://<IP-Raspberry>:1880/ui`

- Carte en direct
- État des batteries
- Alertes
- Messages

## 🔋 Autonomie

- Modules : 3-5 jours
- Base : illimitée (solaire)
- Portée : 2-5 km en ville, 10+ km en campagne

## 🆘 Support

- Documentation : `/docs`
- Bugs : Issues GitHub
- Questions : Discussions
- Invasion zombie : Courez !

## 📜 Licence

MIT - Faites-en ce que vous voulez, mais ne blâmez pas les zombies.

---

> "Un réseau qui fonctionne sans Internet est un réseau qui vous survivra."