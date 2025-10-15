#!/usr/bin/env bash
set -euo pipefail

# Usage: ./flash_proxmox.sh /path/to/proxmox.img /dev/sdX HOSTNAME
IMG="${1:-}"
DEV="${2:-}"
HOST="${3:-pve-node}"
if [[ -z "$IMG" || -z "$DEV" ]]; then echo "Usage: $0 IMAGE DEVICE [HOSTNAME]"; exit 1; fi
echo "Flashing Proxmox image to $DEV ..."
sudo rpi-imager --cli --image "$IMG" --device "$DEV" --yes
echo "$HOST" | sudo tee /tmp/hostname >/dev/null
echo "Done. Label the SD: Proxmox ($HOST)"
