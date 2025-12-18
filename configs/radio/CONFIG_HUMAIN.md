# Profil HUMAIN (opérateur mobile)

Utiliser `--pskref` avec des références chargées depuis le coffre de secrets.

```bash
meshtastic --ch-set name "FAMILIA" --ch-index 0 --pskref ${MESH_PSK_REF_FAMILIA}
meshtastic --ch-set name "ALERTA_ROJA" --ch-index 5 --pskref ${MESH_PSK_REF_ALERTA}
meshtastic --ch-set name "TESORO" --ch-index 6 --pskref ${MESH_PSK_REF_ALERTA}
```
