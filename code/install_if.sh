#!/usr/bin/bash

paket="$1"
sudo apt install -y "$paket" > /dev/null 2>&1
exit_code="$?"

if [ "$exit_code" -eq 0 ]; then
  echo "Paket $paket ist verfügbar unter:"
  which "$paket"
else
  echo "Paket $paket nicht verfügbar, Fehler: $exit_code"
fi
