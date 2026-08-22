#!/bin/bash

# diagnostico.sh - Diagnóstico del sistema
# Alumno: Gisella Henriquez
# Legajo: 5225

NOMBRE=$1

if [ -z "$NOMBRE" ]; then
  echo "Uso: ./diagnostico.sh <nombre>"
  exit 1
fi

LOG="../logs/diagnostico_5225.log"

{
  echo "Bienvenida/o, $NOMBRE"
  echo "Fecha y hora: $(date)"
  echo "Uptime del sistema: $(uptime -p)"
  echo "Uso de disco en /:"
  df -h /
  echo "Espacio disponible en /home:"
  df -h /home
  echo "Usuarios conectados:"
  who
  echo "IP local:"
  hostname -I
} | tee "$LOG"

