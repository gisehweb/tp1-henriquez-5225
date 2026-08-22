# TP1 - Administración de Sistemas
**Alumno:** Gisella Henriquez  
**Legajo:** 5225  

## 📂 Estructura del proyecto
- `codigo/` → scripts en Bash
- `logs/` → salidas generadas por los scripts

## 📝 Scripts

### 1. entorno.sh
- Muestra versión de Bash, contenido de `$PATH` y Token de Autenticidad.
- Genera salida en `logs/entorno_5225.txt`.

### 2. diagnostico.sh
- Recibe un nombre como argumento.
- Muestra bienvenida, fecha/hora, uptime, uso de `/`, espacio en `/home`, usuarios conectados e IP local.
- Genera salida en `logs/diagnostico_5225.log`.

### 3. comparador.sh
- Recibe exactamente dos enteros como argumentos.
- Valida cantidad y tipo de argumentos (errores con códigos 2 y 3).
- Realiza suma, resta, multiplicación, división y módulo (con control de división por cero).
- Compara los números e indica si son iguales o cuál es mayor.
- Imprime resultados en formato de tabla Markdown.
- Genera salida en `logs/comparador_5225.log`.

## ▶️ Ejecución
Ejemplos:
```bash
./codigo/entorno.sh
./codigo/diagnostico.sh Gisella
./codigo/comparador.sh 10 20
