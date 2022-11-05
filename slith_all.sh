#!/bin/bash
set -euxo pipefail

URL=$1
for addr in `./grab_addresses.sh $URL`; do
	slither --exclude-low --exclude-medium --exclude-informational --exclude external-function $addr 2>/dev/null || true
done
