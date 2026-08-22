#!/bin/bash

# diagnostico.sh - TP1 Henríquez 5225

if [ $# -eq 0 ]; then
  echo "Error: Debe ingresar su Nombre Completo" >&2
  exit 1
fi

NOMBRE=$1
LOG="../logs/diagnostico_5225.log"

{
  echo "Iniciando diagnóstico para el administrador: $NOMBRE"
  date +"Fecha y hora: %Y-%m-%d %H:%M:%S"
  uptime
  df -h / | awk 'NR==2{print "Uso de disco en /: "$5}'
  df -h /home | awk 'NR==2{print "Espacio disponible en /home: "$4}'
  who
  ip -4 addr show | grep "inet " | awk '{print "IP local: "$2}'
} | tee -a $LOG

