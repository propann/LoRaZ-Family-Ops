# TEAM-MADA / LoRaZ Family Ops

Infrastructure auto-hébergée pour mailler la famille TEAM-MADA en LoRa/Meshtastic et synchroniser les données (Maison ↔ VPS). Objectif : dépôt publiable, sans secrets et prêt pour une stack Docker sécurisée.

## Modules
- **Control Node (public)** : page racine `/` pour affichage d’état minimal.
- **Status** : `/status` (privé) – supervision légère, checks santé.
- **Grafana** : `/grafana` (privé) – tableaux bord (derrière SSO).
- **n8n / automations** : `/n8n-*` (privé) – workflows.
- **Mesh Ops** : `/mesh` (privé) – vue réseau Meshtastic (nodes, enroll, admin).

## Déploiement rapide (Docker Compose)
```bash
cp .env.example .env
# Renseigner les variables (auth, PSK_REF, MQTT, TLS...)
docker compose -f serveurs/docker/docker-compose.yml up -d
```

Principes stack :
- Services nommés `reverse-proxy`, `mesh-gateway`, `nodered`, `grafana`, `influxdb`, `n8n`, `mqtt-hub`.
- Réseau overlay `core_net` + sous-réseaux privés par service si besoin.
- Healthchecks + rotation de logs (`max-size=10m`, `max-file=3`).

## NGINX / Reverse Proxy (exemple)
Fichier `/etc/nginx/conf.d/loraz.conf` :
```nginx
map $http_upgrade $connection_upgrade { default upgrade; '' close; }
limit_req_zone $binary_remote_addr zone=api_rl:10m rate=$NGINX_RATE_LIMIT;

server {
  listen 443 ssl http2;
  server_name ${DOMAIN};
  ssl_certificate ${TLS_CERT_PATH};
  ssl_certificate_key ${TLS_KEY_PATH};

  add_header Referrer-Policy "strict-origin-when-cross-origin";
  add_header X-Content-Type-Options "nosniff";
  add_header X-Frame-Options "SAMEORIGIN";
  add_header X-XSS-Protection "1; mode=block";
  add_header Strict-Transport-Security "max-age=31536000; includeSubDomains" always;

  location = / { proxy_pass http://control-node/; }
  location /status { proxy_pass http://status/; auth_request /auth; limit_req zone=api_rl burst=$NGINX_BURST; }
  location /grafana/ { proxy_pass http://grafana:3000/; auth_request /auth; proxy_set_header X-Scope-OrgID "1"; }
  location /n8n-/ { proxy_pass http://n8n:5678/; auth_request /auth; }
  location /mesh { proxy_pass http://mesh-dashboard/; auth_request /auth; proxy_set_header X-Forwarded-Prefix /mesh; }

  location = /auth { internal; proxy_pass http://sso-auth/; }
}
```
Astuce Grafana : dans `grafana.ini`, définir `root_url = %(protocol)s://%(domain)s/grafana`.

## MQTT bridge (Maison ↔ VPS)
- Maison = broker temps réel (localhost ou LAN sécurisé).
- VPS = hub agrégation + filtrage.
- Exemple de bridge (`/etc/mosquitto/conf.d/bridge.conf`) :
```conf
connection loraz-hub
address ${MQTT_BROKER_HOST}:${MQTT_BROKER_PORT}
topic mesh/# out 1
topic alerts/# both 1
remote_username ${MQTT_USERNAME}
remote_password ${MQTT_PASSWORD}
bridge_capath ${MQTT_TLS_CA_CERT_PATH}
bridge_cafile ${MQTT_TLS_CA_CERT_PATH}
bridge_tls_version tlsv1.2
restart_timeout 10
```
Ajouter une ACL côté broker (`acl_file /etc/mosquitto/acl`) en limitant aux topics nécessaires.

## Docker Runbook (résumé)
- Démarrer : `docker compose up -d`
- Vérifier santé : `docker compose ps`, `docker compose logs reverse-proxy`
- Sauvegarder : `docker compose down` puis backup volumes (Influx, n8n, Node-RED flows sans secrets)
- Restaurer : remettre les volumes puis `docker compose up -d`

## Ressources
- Documentation complète : `docs/`
- Mesh Ops : `docs/MESH_OPS.md`
- Architecture : `docs/ARCHITECTURE.md`
- Sécurité : `SECURITY.md`
