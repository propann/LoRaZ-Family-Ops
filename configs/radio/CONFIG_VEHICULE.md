# 🚗 Configuration Module Véhicule (ZEBRA_MOBILE)

## Commandes de base
```bash
# Définir le nom du module
meshtastic --set device.owner_short "ZM"
meshtastic --set device.owner "VEHICULE"

# Configuration des canaux
meshtastic --ch-set name "FAMILIA" --ch-index 0 --ch-set psk 2885870cd29c70e5d256b6a147d6f1aa86ce1ebda96bc2cfec643ab7bc772d25
meshtastic --ch-set name "TESORO" --ch-index 6 --ch-set psk d72ef7bf8e42f0965d0734103b238267880268eaf8faf74a0c63d7ee22aa5602
meshtastic --ch-set name "ALERTA_ROJA" --ch-index 5 --ch-set psk 542e04683805717d899d1b34a316540586123e321f16dced45832a856788d934

# Configuration GPS
meshtastic --set position.gps_enabled true
meshtastic --set position.position_broadcast_secs 30
meshtastic --set position.smart_position_enabled true

# Configuration LoRa
meshtastic --set lora.region EU_868
meshtastic --set lora.tx_power 20
meshtastic --set lora.hop_limit 5
```