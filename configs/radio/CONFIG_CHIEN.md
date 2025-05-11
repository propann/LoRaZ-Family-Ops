# 🐶 Configuration Module Chien (DOGGO_1)

## Commandes de base
```bash
# Définir le nom du module
meshtastic --set device.owner_short "1"
meshtastic --set device.owner "DOGGO"

# Configuration des canaux
meshtastic --ch-set name "FAMILIA" --ch-index 0 --ch-set psk 2885870cd29c70e5d256b6a147d6f1aa86ce1ebda96bc2cfec643ab7bc772d25
meshtastic --ch-set name "PERRITOS" --ch-index 4 --ch-set psk cb1f9a5a4a56fa49f932e2183ed20981798b23b1b07187da6d11f65d3ac49546
meshtastic --ch-set name "TESORO" --ch-index 6 --ch-set psk d72ef7bf8e42f0965d0734103b238267880268eaf8faf74a0c63d7ee22aa5602

# Configuration GPS
meshtastic --set position.gps_enabled true
meshtastic --set position.position_broadcast_secs 60
meshtastic --set position.smart_position_enabled true

# Configuration LoRa
meshtastic --set lora.region EU_868
meshtastic --set lora.tx_power 17
meshtastic --set lora.channel_num 4

# Configuration énergie
meshtastic --set power.is_power_saving true
meshtastic --set power.ls_secs 600
```