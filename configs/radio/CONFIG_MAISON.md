# 🏠 Configuration Module Maison (BASE_CASTILLO)

## Commandes de base
```bash
# Définir le nom du module
meshtastic --set device.owner_short "HQ"
meshtastic --set device.owner "BASE"

# Configuration des canaux
meshtastic --ch-set name "FAMILIA" --ch-index 0 --ch-set psk 2885870cd29c70e5d256b6a147d6f1aa86ce1ebda96bc2cfec643ab7bc772d25
meshtastic --ch-set name "CASTILLO" --ch-index 3 --ch-set psk 9596342bb8bcf82914bb5ea83c1852afb416dfe24f53ac26ca3b37f934dd731b
meshtastic --ch-set name "ALERTA_ROJA" --ch-index 5 --ch-set psk 542e04683805717d899d1b34a316540586123e321f16dced45832a856788d934
meshtastic --ch-set name "TESORO" --ch-index 6 --ch-set psk d72ef7bf8e42f0965d0734103b238267880268eaf8faf74a0c63d7ee22aa5602

# Configuration LoRa
meshtastic --set lora.region EU_868
meshtastic --set lora.tx_power 23
meshtastic --set lora.hop_limit 7

# Configuration réseau
meshtastic --set network.wifi_enabled true
meshtastic --set network.mqtt_enabled true
```