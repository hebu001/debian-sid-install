# Debian Sid Libc6 Installer

Автоматизация установки `libc6-dev` и `libc6-dbg` из репозитория sid.

## Использование

```bash
apt update
apt install curl -y
curl -O https://raw.githubusercontent.com/hebu001/debian-sid-install/main/sid_update.sh
chmod +x sid_update.sh
./sid_update.sh
