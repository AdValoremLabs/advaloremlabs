#!/usr/bin/env bash
set -euo pipefail

# Usage: ./flash_haos.sh /path/to/haos.img /dev/sdX HOSTNAME
IMG="${1:-}"
DEV="${2:-}"
HOST="${3:-ha-gateway}"
if [[ -z "$IMG" || -z "$DEV" ]]; then echo "Usage: $0 IMAGE DEVICE [HOSTNAME]"; exit 1; fi
echo "Flashing Home Assistant OS to $DEV ..."
sudo rpi-imager --cli --image "$IMG" --device "$DEV" --yes
echo "$HOST" | sudo tee /tmp/hostname >/dev/null
echo "Done. Label the SD: HAOS ($HOST)"
