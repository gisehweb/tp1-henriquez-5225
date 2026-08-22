#!/bin/bash

# entorno.sh - TP1 Henríquez 5225

# Versión actual de Bash
echo "Versión de Bash:"
bash --version | head -n 1

# Contenido de PATH
echo "Contenido de PATH:"
echo $PATH

# Token de Autenticidad (Legajo + últimos 4 dígitos DNI)
TOKEN="5225-6789"   # reemplazá 6789 por tus últimos 4 dígitos reales
echo "Token de Autenticidad: $TOKEN"

# Guardar en logs
mkdir -p ../logs
{
  echo "Versión de Bash:"
  bash --version | head -n 1
  echo "PATH: $PATH"
  echo "Token: $TOKEN"
} > ../logs/entorno_5225.txt




