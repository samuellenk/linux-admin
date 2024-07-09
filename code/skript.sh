#!/usr/bin/bash

mk_dt_ordner () {
  my_date=$(date +%F)
  mkdir $my_date
  echo "Ordner erstellt"
}

personal_data () {
  echo "Anzahl Parameter: $#"
  echo "Name: $1"
  echo "Alter: $2"
  mk_dt_ordner
}

personal_data $1 $2
