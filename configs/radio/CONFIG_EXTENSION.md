# Extension de canaux Meshtastic (sans PSK en clair)

Utiliser des références de clés (PSK_REF) et les injecter au flashage via des variables d’environnement ou un coffre de secrets.

```bash
meshtastic --ch-set name "FAMILIA" --ch-index 0 --pskref ${MESH_PSK_REF_FAMILIA}
meshtastic --ch-set name "EXPLORA" --ch-index 2 --pskref ${MESH_PSK_REF_CLAN}
meshtastic --ch-set name "CASTILLO" --ch-index 3 --pskref ${MESH_PSK_REF_CLAN}
```

> ⚠️ Ne jamais stocker les clés hex dans Git. Référez-vous aux identifiants de clés.
