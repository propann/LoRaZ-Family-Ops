# Sécurité / Gestion des secrets

## Principes
- Zéro secret dans Git (PSK, mots de passe, tokens, IP). Utiliser des placeholders ou variables d’environnement.
- Authentification centralisée (SSO/OIDC) sur toutes les routes privées (`/status`, `/grafana`, `/n8n-*`, `/mesh`).
- MFA obligatoire sur les comptes admins (Grafana, n8n, broker MQTT si supporté).

## Gestion des secrets
- Stockage dans un coffre (1Password, Vault, Pass). Export `.env` chiffré uniquement.
- Rotation trimestrielle des PSK Meshtastic (via PSK_REF), des tokens API et des mots de passe système.
- Révoquer immédiatement les PSK_REF compromises et reflasher les modules.

## Accès serveurs
- Accès SSH via clés + MFA/U2F. Journalisation `auth.log` surveillée.
- Pare-feu : n’exposer que 80/443 ; MQTT seulement via TLS ou VPN.
- Sauvegardes chiffrées (restic/borg) stockées hors site.

## Audit
- Script `scripts/sanitize_repo.sh` pour détecter IP/tokens/hex keys avant commit.
- Vérifier les logs NGINX et Grafana (audit) hebdomadairement.
- Test de restauration mensuel des sauvegardes.
