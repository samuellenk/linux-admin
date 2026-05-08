#!/bin/bash

# Loop über alle "nornalen" User
for u in $(grep -E ':[0-9]{4}:' /etc/passwd | cut -d ':' -f 1); do
  echo "=== User: $u ==="
  # Anzeige der Konto-/Passwortablauf-Infos:
  sudo chage -l "$u"
done
