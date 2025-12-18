# OPERATIONS / RUNBOOK

## Démarrage
1. Charger `.env` depuis le coffre (jamais commité).
2. `docker compose -f serveurs/docker/docker-compose.yml up -d`
3. Vérifier healthchecks : `docker compose ps` et `docker compose logs reverse-proxy`.

## Arrêt / Maintenance
1. `docker compose down`
2. Sauvegarder volumes :
   - InfluxDB (`influxdb_data`)
   - Grafana (`grafana_data`)
   - n8n (`n8n_data`)
   - Node-RED flows exportés sans secrets
3. Restaurer en remettant les volumes puis `docker compose up -d`.

## Checklists panne
### NGINX down
- `docker compose logs reverse-proxy | tail`
- Tester `curl -I https://<domain>/status`
- Vérifier certificats (`TLS_CERT_PATH`, `TLS_KEY_PATH`).

### MQTT panne
- `mosquitto_sub -h ${MQTT_BROKER_HOST} -p ${MQTT_BROKER_PORT} -t '$SYS/#' -v`
- Vérifier ACL/bridge et TLS (`bridge_cafile`).
- S’assurer que les topics `mesh/#` et `alerts/#` sont accessibles.

### Node-RED / n8n panne
- `docker compose logs nodered`
- Vérifier que les connexions MQTT utilisent `${MQTT_USERNAME}` / `${MQTT_PASSWORD}` et hôte `<MQTT_HOST>`.
- Importer les flows seulement depuis des exports nettoyés.

## Sauvegarde & rotation
- Logs : utiliser `max-size=10m` / `max-file=3` dans compose.
- Jobs de backup : `cron` hebdo + test de restauration mensuel.

## Restaurer le mesh
1. Reprovisionner les PSK via PSK_REF dans le coffre.
2. Flasher les modules avec `meshtastic --pskref ...`.
3. Reconnecter la gateway MQTT et valider la réception dans Grafana.
