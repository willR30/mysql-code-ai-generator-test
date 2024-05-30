# Comparación de Herramientas de IA para Generar Código MySQL

Este repositorio está dedicado a la comparación de dos herramientas asistidas por inteligencia artificial para la generación de código MySQL. A través de este proyecto, evaluaremos las capacidades, ventajas y desventajas de cada herramienta para proporcionar una guía útil para desarrolladores y equipos de datos.

## Contenido

- [Introducción](#introducción)
- [Herramientas Comparadas](#herramientas-comparadas)
- [Metodología](#metodología)
- [Resultados](#resultados)
- [Conclusiones](#conclusiones)
- [Cómo Contribuir](#cómo-contribuir)
- [Licencia](#licencia)

## Introducción

El objetivo de este repositorio es comparar dos herramientas de inteligencia artificial que asisten en la generación de código SQL, específicamente para bases de datos MySQL. Estas herramientas prometen facilitar el trabajo de los desarrolladores al automatizar la creación de consultas SQL, mejorando así la productividad y reduciendo errores.

## Herramientas Comparadas

1. **easy-peasy.ai**
    - Sitio oficial: [https://easy-peasy.ai/es/templates/generate-sql-with-ai](https://easy-peasy.ai/es/templates/generate-sql-with-ai)
    - Limitaciones: solo 3 consultas por día en la versión gratuita.
    - Características:
        - Permite escoger los diferentes motores de base de datos.
        - Está únicamente orientado a generar consultas SQL.
2. **Chat GPT**
    - Sitio oficial: [https://chatgpt.com/](https://chatgpt.com/)
    - Características:
        - Consultas ilimitadas.
        - No está orientado únicamente a consultas SQL.
        - Demanda indicarle el contexto con el motor de base de datos con el que se va a trabajar.
        - Es gratuito.

## Metodología

Para realizar una comparación justa y detallada, seguiremos los siguientes pasos:

1. Definir un conjunto de casos de uso comunes y complejos.
2. Generar código MySQL utilizando ambas herramientas para cada caso de uso.
3. Evaluar la precisión, eficiencia y calidad del código generado.
4. Documentar los resultados y observaciones de cada herramienta.

## Detalle de la Prueba

Implementaremos 3 prompts de complejidad baja, media y alta:

1. **Prompt 1**: Crear una base de datos llamada `Animales`.
2. **Prompt 2**: Crear 3 tablas: `Animales`, `Especie` y `Habitad`. En la tabla `Animales` se requieren los campos: `ID`, `nombre`, `cantidad de patas`. En la tabla `Especie`: `ID`, `Nombre de especie`, `descripcion`. En la tabla `Habitad`: `ID`, `nombre de habitad`, `detalle de habitad`.
3. **Prompt 3**: Crear un script donde se listen todos los registros de las 3 tablas (usando al menos un JOIN), ordenarlos de menor a mayor. El script debe ser un procedimiento almacenado y debe usar una tabla temporal para almacenar temporalmente los registros.


