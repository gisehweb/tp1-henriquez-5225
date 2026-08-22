# TP1 - Administración de Sistemas
**Alumno:** Gisella Henriquez  
**Legajo:** 5225  

##  Estructura del proyecto
- `codigo/` → scripts en Bash
- `logs/` → salidas generadas por los scripts

##  Scripts

### 1. entorno.sh
- Muestra versión de Bash, contenido de `$PATH` y Token de Autenticidad.
- Genera salida en `logs/entorno_5225.txt`.
<img width="1004" height="436" alt="image" src="https://github.com/user-attachments/assets/fef72cfe-017b-469a-a0f2-014a8893eedf" />

### 2. diagnostico.sh
- Recibe un nombre como argumento.
- Muestra bienvenida, fecha/hora, uptime, uso de `/`, espacio en `/home`, usuarios conectados e IP local.
- Genera salida en `logs/diagnostico_5225.log`.
<img width="1004" height="749" alt="image" src="https://github.com/user-attachments/assets/1f970f44-e8a1-4a69-8007-27ef84a01fbb" />

### 3. comparador.sh
- Recibe exactamente dos enteros como argumentos.
- Valida cantidad y tipo de argumentos (errores con códigos 2 y 3).
- Realiza suma, resta, multiplicación, división y módulo (con control de división por cero).
- Compara los números e indica si son iguales o cuál es mayor.
- Imprime resultados en formato de tabla Markdown.
- Genera salida en `logs/comparador_5225.log`.
<img width="823" height="587" alt="image" src="https://github.com/user-attachments/assets/c168ef26-6567-41ff-9c56-bd9ca366b74c" />

### 4. comparador.sh en modo debug con mi legajo y los últimos 4 dígitos de mi DNI:
<img width="1004" height="684" alt="image" src="https://github.com/user-attachments/assets/a2ccb299-f6cb-405f-a3b9-7395fdcf6ad5" />

##  Ejecución
Ejemplos:
```bash
./codigo/entorno.sh
./codigo/diagnostico.sh Gisella
./codigo/comparador.sh 10 20
