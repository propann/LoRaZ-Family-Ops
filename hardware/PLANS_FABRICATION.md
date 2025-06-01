# 📋 Plans de Fabrication Détaillés - LoRaZ-Family-Ops

## 📚 Table des matières

1. [Module Humain (UNIT-H001)](#module-humain)
2. [Module Animal (UNIT-C001)](#module-animal) 
3. [Module Base (UNIT-B001)](#module-base)
4. [Module Véhicule (UNIT-V001)](#module-véhicule)
5. [Module Extension (UNIT-X001)](#module-extension)

## Module Humain

### Composants nécessaires
- 1× LilyGo T-Beam v1.1
- 1× Batterie 18650 3000mAh
- 1× Encodeur rotatif EC11
- 1× Bouton PTT étanche
- 1× Micro MAX9814
- 1× Buzzer 5V
- 1× LED RGB WS2812
- 1× Boîtier imprimé 3D (fichiers STL fournis)
- Câbles et connecteurs

### Schéma de câblage
```
T-BEAM          COMPOSANT
GPIO34    <-->  Encodeur CLK
GPIO35    <-->  Encodeur DT
GPIO32    <-->  Encodeur SW
GPIO36    <-->  Micro OUT
GPIO27    <-->  Buzzer +
GPIO25    <-->  LED RGB Data
```

### Instructions de montage
1. Imprimer le boîtier (temps: ~4h)
2. Souder les composants selon schéma
3. Installer la batterie
4. Flasher le firmware
5. Tester toutes les fonctions

### Tests requis
- [x] Communication LoRa
- [x] GPS fix
- [x] Encodeur navigation
- [x] PTT fonctionnel
- [x] Alertes sonores
- [x] LED status

## Module Animal

### Composants nécessaires
- 1× TinyLoRa E5
- 1× GPS NEO-6M
- 1× Lecteur RFID 134.2kHz
- 1× Batterie LiPo 1000mAh
- 1× Buzzer mini
- 1× LED status
- 1× Boîtier étanche IP67
- 1× Collier ajustable

### Schéma de câblage
```
TINYLORA        COMPOSANT
GPIO16    <-->  RFID TX
GPIO17    <-->  RFID RX
GPIO4     <-->  GPS TX
GPIO5     <-->  GPS RX
GPIO26    <-->  Buzzer +
GPIO25    <-->  LED status
```

### Instructions de montage
1. Préparer le collier
2. Intégrer l'antenne RFID
3. Assembler le module
4. Étanchéifier
5. Test en conditions réelles

### Tests requis
- [x] Lecture RFID stable
- [x] GPS tracking
- [x] Étanchéité IP67
- [x] Autonomie 7 jours
- [x] Résistance chocs

## Module Base

### Composants nécessaires
- 1× Raspberry Pi 5
- 1× Module LoRa USB
- 1× Écran 7" tactile
- 1× Panneau solaire 30W
- 1× Batterie LiFePO4 20Ah
- 1× Contrôleur MPPT
- 1× Boîtier ventilé
- Câbles et connecteurs

### Schéma électrique
```
PANNEAU   -->  MPPT  -->  BATTERIE
BATTERIE  -->  DC-DC -->  PI (5V/3A)
PI USB    -->  MODULE LORA
PI GPIO   -->  ÉCRAN
```

### Instructions d'installation
1. Monter le Pi dans boîtier
2. Installer système solaire
3. Configurer logiciels
4. Tester autonomie
5. Backup système

### Tests requis
- [x] Autonomie 72h
- [x] Température stable
- [x] Services actifs
- [x] Alertes fonctionnelles
- [x] Backup automatique

## Module Véhicule

### Composants nécessaires
- 1× ESP32 + LoRa
- 1× GPS intégré
- 1× Micro MAX9814
- 1× Panneau solaire 5W
- 1× Batterie 18650
- 1× Contrôleur TP4056
- 1× Boîtier discret
- Câbles et fixations

### Schéma d'installation
```
SOLAIRE  -->  TP4056  -->  BATTERIE
BATTERIE -->  ESP32   -->  COMPOSANTS
```

### Instructions de montage
1. Préparer boîtier
2. Installer panneau
3. Câbler composants
4. Fixer dans véhicule
5. Tests terrain

### Tests requis
- [x] Charge solaire
- [x] GPS fix rapide
- [x] Relais LoRa
- [x] Détection mouvement
- [x] Discrétion visuelle

## Module Extension

### Composants nécessaires
- 1× ESP32 mini
- 1× Module LoRa RFM95
- 1× BME280 (temp/hum)
- 1× Panneau 5V 3W
- 1× Batterie LiFePO4
- 1× Boîtier IP67
- Câbles et antenne

### Schéma de câblage
```
ESP32          COMPOSANT
GPIO22    <--> BME280 SCL
GPIO21    <--> BME280 SDA
GPIO18    <--> LoRa SCK
GPIO19    <--> LoRa MISO
GPIO23    <--> LoRa MOSI
GPIO5     <--> LoRa NSS
```

### Instructions d'installation
1. Assembler module
2. Étanchéifier
3. Installer sur site
4. Orienter panneau
5. Vérifier signal

### Tests requis
- [x] Étanchéité
- [x] Autonomie 30j+
- [x] Portée LoRa
- [x] Capteurs OK
- [x] Discrétion

## Notes importantes

### Outils nécessaires
- Fer à souder + étain
- Multimètre
- Tournevis précision
- Pistolet colle
- Résine époxy
- Gaine thermorétractable

### Sécurité
- Porter EPI appropriés
- Tester hors tension
- Vérifier polarités
- Protéger connexions
- Documenter modifications

### Maintenance
- Nettoyer régulièrement
- Vérifier étanchéité
- Contrôler batteries
- Mettre à jour firmware
- Tester fonctions

> "Un module bien construit survivra à l'apocalypse... et à son constructeur."