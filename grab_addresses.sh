#!/bin/bash

set -euxo pipefail

URL=$1
curl $URL | grep -poE '(0x[0-9a-fA-F]{40})'|uniq
