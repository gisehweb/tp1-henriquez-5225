#!/bin/bash

# comparador.sh - Script aritmético comparador
# Alumno: Gisella Henriquez
# Legajo: 5225

# Validar cantidad de argumentos
if [ $# -ne 2 ]; then
  echo "Error: Debe ingresar exactamente 2 números enteros" >&2
  exit 2
fi

A=$1
B=$2

# Validar que sean enteros
for arg in $A $B; do
  if ! [[ $arg =~ ^-?[0-9]+$ ]]; then
    echo "Error: Argumentos deben ser enteros" >&2
    exit 3
  fi
done

# Operaciones
SUMA=$((A+B))
RESTA=$((A-B))
MULT=$((A*B))

if [ $B -ne 0 ]; then
  DIV=$((A/B))
  MOD=$((A%B))
else
  DIV="N/A"
  MOD="N/A"
fi

# Comparaciones
if [ $A -eq $B ]; then
  COMP="Son iguales"
elif [ $A -gt $B ]; then
  COMP="$A es mayor que $B"
else
  COMP="$B es mayor que $A"
fi

# Guardar en logs
LOG="../logs/comparador_5225.log"

{
  echo "| Operación   | Expresión | Resultado |"
  echo "| :---        | :---      | :---      |"
  echo "| Suma        | $A + $B   | $SUMA     |"
  echo "| Resta       | $A - $B   | $RESTA    |"
  echo "| Multiplic.  | $A * $B   | $MULT     |"
  echo "| División    | $A / $B   | $DIV      |"
  echo "| Módulo      | $A % $B   | $MOD      |"
  echo "| Comparación |           | $COMP     |"
} | tee "$LOG"

