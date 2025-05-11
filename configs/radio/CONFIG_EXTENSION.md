# 🌿 Configuration Module Extension (ZNODE_P1)

## Commandes de base
```bash
# Définir le nom du module
meshtastic --set device.owner_short "Z1"
meshtastic --set device.owner "NODE"

# Configuration des canaux
meshtastic --ch-set name "FAMILIA" --ch-index 0 --ch-set psk 2885870cd29c70e5d256b6a147d6f1aa86ce1ebda96bc2cfec643ab7bc772d25
meshtastic --ch-set name "EXPLORA" --ch-index 2 --ch-set psk 7f7e0850ca19817dfaf1a75d2532446b74da5b3653d4352657cc19c5044b7dc6
meshtastic --ch-set name "CASTILLO" --ch-index 3 --ch-set psk 9596342bb8bcf82914bb5ea83c1852afb416dfe24f53ac26ca3b37f934dd731b

# Configuration LoRa
meshtastic --set lora.region EU_868
meshtastic --set lora.tx_power 10
meshtastic --set lora.channel_num 2

# Configuration énergie
meshtastic --set power.is_power_saving true
meshtastic --set power.ls_secs 1800
```