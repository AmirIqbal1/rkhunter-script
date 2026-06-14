#!/usr/bin/env bash
set -euo pipefail

LOG_FILE="/var/log/rkhunter.log"

if [[ "${EUID}" -ne 0 ]]; then
  echo "Please run as root:"
  echo "sudo $0"
  exit 1
fi

echo "==> Updating package lists..."
apt update

echo "==> Installing rkhunter if missing..."
apt install -y rkhunter

echo "==> Checking rkhunter config..."
rkhunter -C || {
  echo "rkhunter config check failed. Check /etc/rkhunter.conf"
  exit 1
}

echo "==> Updating rkhunter data files..."
rkhunter --update || true

echo "==> Updating file property database..."
rkhunter --propupd

echo "==> Running rootkit scan..."
rkhunter --check --sk --rwo

echo
echo "Scan complete."
echo "Full log: ${LOG_FILE}"
