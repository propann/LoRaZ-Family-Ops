# Profil CHIEN (traceur canin) — sans clés en clair

Utiliser des références de PSK et charger les vraies clés au moment du provisionning.

```bash
meshtastic --ch-set name "FAMILIA" --ch-index 0 --pskref ${MESH_PSK_REF_FAMILIA}
meshtastic --ch-set name "PERRITOS" --ch-index 4 --pskref ${MESH_PSK_REF_CLAN}
meshtastic --ch-set name "TESORO" --ch-index 6 --pskref ${MESH_PSK_REF_ALERTA}
```
