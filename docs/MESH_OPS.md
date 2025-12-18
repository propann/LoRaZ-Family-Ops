# MESH OPS

## Vue utilisateur (famille)
- `/mesh` : tableau des nodes (last-heard, RSSI, batterie).
- `/mesh/nodes` : fiches "personnage radio" (alias, rôle, couleur QR).
- `/mesh/enroll` : enrôlement guidé (QR ou commande CLI) sans afficher les PSK ; seules les références PSK_REF sont visibles.

## Vue admin
- `/mesh/admin` (privé + SSO) :
  - Révocation/rotation des PSK_REF
  - Blacklist d’ID radio
  - Restart gateway / flush caches MQTT
- Journal d’audit : exporter les actions dans InfluxDB + Grafana.

## Procédure d’enrôlement rapide (sans secrets en clair)
1. Générer une PSK en dehors du dépôt, l’enregistrer en coffre sous une référence `MESH_PSK_REF_*`.
2. Sur `/mesh/enroll`, sélectionner le profil (maison, humain, enfant, véhicule, chien).
3. Télécharger le QR/CLI : la commande contient `--pskref ${MESH_PSK_REF_*}` uniquement.
4. Flasher le module via USB ou CLI meshtastic, vérifier `--info`.

## Dashboard
- Agréger `last_heard`, RSSI et batterie dans InfluxDB.
- Alertes : topic MQTT `alerts/#` → n8n → notification (Telegram/Matrix) via webhook secret en environnement.
