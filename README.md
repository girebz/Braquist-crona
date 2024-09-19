# Ajuste de la Solución Braquistócrona

Este proyecto presenta la solución al problema clásico de la braquistócrona usando Wolfram Mathematica. La braquistócrona es la curva que minimiza el tiempo de viaje de una partícula bajo la influencia de la gravedad, moviéndose entre dos puntos no alineados verticalmente.

## Descripción

Este código implementa una solución numérica al problema de la braquistócrona. Utiliza las funciones integradas de Wolfram Mathematica para definir las ecuaciones del problema, encontrar la solución numérica y verificar su validez. Además, genera una visualización de la curva ajustada.

## Contenido

- **Definición del Problema:** Planteamiento del problema de la braquistócrona y su formulación en términos de ecuaciones.
- **Solución Numérica:** Uso de `FindRoot` para calcular los valores de los parámetros que definen la curva.
- **Verificación:** Comprobación de la validez de la solución numérica.
- **Visualización:** Generación de un gráfico interactivo que muestra la curva braquistócrona ajustada.

## Archivos

- `braquistocrona.nb`: Notebook de Wolfram Mathematica que contiene el código completo y las explicaciones paso a paso.
- `braquistocrona.m`: Versión de texto plano del código Mathematica para ser ejecutada en otros entornos.

## Uso

1. Abre el archivo `braquistocrona.nb` en Wolfram Mathematica.
2. Ejecuta las celdas de código secuencialmente para resolver el problema y visualizar la curva.
3. Modifica los valores de los puntos de inicio y finalización para explorar diferentes configuraciones.

## Requisitos

- Wolfram Mathematica 12.0 o superior.

## Cómo Funciona

1. **Definir las Ecuaciones:** Se definen las ecuaciones que describen el movimiento de la partícula.
2. **Definir el Punto de Llegada:** Se fija el punto final al que llegará la partícula.
3. **Calcular la Solución Numérica:** Se usa `FindRoot` para obtener los valores numéricos de los parámetros.
4. **Verificar la Solución:** Se verifica que los valores obtenidos tengan sentido físico.
5. **Visualizar la Curva:** Se genera un gráfico interactivo que muestra la curva braquistócrona.

## Contribuciones

Las contribuciones son bienvenidas. Si encuentras algún problema o tienes alguna mejora, siéntete libre de abrir un issue o enviar un pull request.
