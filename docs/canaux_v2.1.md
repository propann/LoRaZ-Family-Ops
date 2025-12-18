# Canaux Meshtastic v2.1 (références uniquement)

| Index | Nom      | Description                       | PSK_REF            |
|-------|----------|-----------------------------------|--------------------|
| 0     | FAMILIA  | Canal principal famille           | ${MESH_PSK_REF_FAMILIA} |
| 3     | CASTILLO | Maison / forteresse               | ${MESH_PSK_REF_CLAN}    |
| 4     | PERRITOS | Traceurs animaux                  | ${MESH_PSK_REF_CLAN}    |
| 5     | ALERTA   | Alerte intrusion                  | ${MESH_PSK_REF_ALERTA}  |
| 6     | TESORO   | Recherche de ressources           | ${MESH_PSK_REF_ALERTA}  |

* PSK : jamais en clair dans le dépôt. Stocker dans un gestionnaire de secrets.
* Utiliser `--pskref` au lieu de `--pskhex`.
