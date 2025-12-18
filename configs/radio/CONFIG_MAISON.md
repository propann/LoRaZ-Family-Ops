# Profil MAISON (base fixe)

Aucun PSK en clair. Injecter les références puis les clés via secret manager.

```bash
meshtastic --ch-set name "FAMILIA" --ch-index 0 --pskref ${MESH_PSK_REF_FAMILIA}
meshtastic --ch-set name "CASTILLO" --ch-index 3 --pskref ${MESH_PSK_REF_CLAN}
meshtastic --ch-set name "ALERTA_ROJA" --ch-index 5 --pskref ${MESH_PSK_REF_ALERTA}
meshtastic --ch-set name "TESORO" --ch-index 6 --pskref ${MESH_PSK_REF_ALERTA}
meshtastic --set network.mqtt_enabled true
```
