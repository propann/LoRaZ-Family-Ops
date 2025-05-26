# 📡 Canaux LoRaZ-Family-Ops v2.1

> *Édition officielle des canaux pour la survie, la coordination et les appels à l’aide, même quand les zombies dansent sur les ruines.*

## 🔐 Tableau des canaux (officiel v2.1)

| Index | Nom      | Description                       | PSK (hex)                                                        |
| ----- | -------- | --------------------------------- | ---------------------------------------------------------------- |
| 0     | CLAN     | Messages familiaux (texte, image) | 0f7288dd64b8e61284c010ea4c93292a75329bbef067b6b275f319a6c6489a62 |
| 1     | REDLINE  | SOS + GPS urgence                 | 8fedc983da0a0187543eaa0af00dcc36580705136876013a9471b3c1cb837d6e |
| 2     | ECHO     | Push-To-Talk (audio LoRa)         | 7350b5d0625f6800e326f339a50b6c70b09f7b2d3fcaff3eab26898785987bd3 |
| 3     | BUNKER   | Capteurs météo, AR, BLE           | 15a55775bc052b0b280e8123887399b825526bd742f3f88e08f4e6ddad421b75 |
| 4     | ZZOMBI   | Mode zombie, tests, fun           | 5aad94a084982f65304c0491179894989451edb63c261e3fe6a8de9e9f26007e |
| 5     | ATTAK    | Liaison tactique avec ATAK Server | 8a6c6b5f47cc2fd26498b5e9e0453143c40706d9473167a49a1eb7e2f63ddba5 |
| 6     | MAJ\_OTA | Maintenance, mises à jour OTA     | 75f7d9333b7037a3ca38fee190e6157cb2e63a177c89ef117bd69fa4a086258b |
| 7     | RESERVEE | Slot libre pour usage futur       | —                                                                |

## ⚠️ Rappel Meshtastic

* Limite : **8 canaux max par module**
* Longueur max nom de canal : **16 caractères**
* PSK : clés hexadécimales 256 bits (pré-partagées)

## 📥 Utilisation CLI

Pour ajouter un canal via Meshtastic CLI :

```bash
meshtastic --ch-add CLAN --ch-index 0 --pskhex 0f7288dd64b8e61284c010ea4c93292a75329bbef067b6b275f319a6c6489a62
```

➡️ Répéter avec les bons noms et index pour chaque canal.

---

🎒 *Toujours prêt, même sans réseau. Et si ça clignote rouge… c’est pas un bug, c’est un signal.*
