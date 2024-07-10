#!/usr/bin/bash

paket="$1"
sudo apt install -y "$paket" > /dev/null 2>&1
exit_code="$?"

case "$exit_code" in
  0)
    echo "Paket $paket ist verfügbar unter:"
    which "$paket";;
  100 | 2 | 3 | 4)
    echo "100|2|3|4 - Paket $paket nicht verfügbar, Fehler: $exit_code";;
  *)
    echo "Paket $paket nicht verfügbar, Fehler: $exit_code";;
esac
