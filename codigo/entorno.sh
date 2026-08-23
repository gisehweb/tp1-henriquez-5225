#!/bin/bash

# entorno.sh - Inspección de entorno personalizado
# Alumno: Gisella Henriquez
# Legajo: 5225
# DNI: 35591302

# 1. Versión de Bash
echo "Versión de Bash:"
bash --version | head -n 1

# 2. Contenido de PATH
echo -e "\nContenido de PATH:"
echo $PATH

# 3. Token de Autenticidad
LEGAJO="5225"
DNI4="1302"   # últimos 4 dígitos de tu DNI
TOKEN="${LEGAJO}-${DNI4}"
echo -e "\nToken de Autenticidad: $TOKEN"

# 4. Guardar en archivo de logs (carpeta al mismo nivel que codigo)
mkdir -p ../logs
{
  echo "Versión de Bash:"
  bash --version | head -n 1
  echo -e "\nContenido de PATH:"
  echo $PATH
  echo -e "\nToken de Autenticidad: $TOKEN"
} > ../logs/entorno_${LEGAJO}.txt

