# ARCHITECTURE TEAM-MADA

```
Maison (LAN sécurisé)
  ├── Meshtastic nodes (famille) --(LoRa)-->
  ├── Meshtastic Gateway (MQTT local) --TLS bridge--> VPS MQTT Hub
  └── Panel local minimal (/status via VPN)

VPS (public)
  ├── NGINX reverse proxy (TLS, rate limit, SSO)
  │     ├── /              -> control-node (public)
  │     ├── /status        -> status app (privé)
  │     ├── /grafana       -> grafana (privé + root_url corrigé)
  │     ├── /n8n-*         -> n8n (privé)
  │     └── /mesh          -> mesh dashboard (privé)
  ├── n8n / Node-RED (automations mesh/MQTT)
  ├── InfluxDB (metrics) + Grafana (dashboards)
  ├── Mesh Dashboard (/mesh) : nodes, last-heard, alerts
  └── Backups chiffrés vers stockage hors-site
```

Flux clés :
- Meshtastic → Gateway maison → MQTT bridge TLS → MQTT hub VPS → n8n/Grafana.
- Enrôlement nodes via `/mesh/enroll` (PSK_REF uniquement), distribution QR/CLI.
- Monitoring santé via `/status` + métriques InfluxDB.

Convention de routes NGINX : `/` public, le reste privé + auth_request (SSO recommandé).
