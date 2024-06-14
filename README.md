# PersonasApp
# Desafío de Ruby on Rails: Sistema de Gestión de Personas

A continuación puede verse un video demostrativo:

[![Demo Video](https://img.youtube.com/vi/mjL2k2vFUT8/0.jpg)](https://www.youtube.com/watch?v=mjL2k2vFUT8)

Este proyecto es un desafío de Ruby on Rails que implementa un sistema de gestión de personas. El sistema permite listar personas, editar detalles de personas y ver detalles de cada persona.

## Características

1. **Scaffold para el modelo Persona**: El sistema proporciona una lista de personas, un formulario de edición y una pantalla de detalles de cada persona.

2. **Modelo de Persona**: El modelo de Persona tiene los siguientes atributos: Nombre, Apellido, Fecha de Nacimiento y Número de DNI. Estos datos se guardan en una base de datos SQLite.

3. **Edad en la pantalla de detalles**: En la pantalla de detalles de cada persona, se muestra la edad de la persona en años.

4. **Promedio de edad**: En el listado de personas, se muestra el promedio de edad de todas las personas en el sistema.

5. **Ordenación por mes de nacimiento**: La lista de personas se puede ordenar por mes de nacimiento, independientemente del año de nacimiento.

## Instalación

Para instalar y ejecutar este proyecto:

1. Clona el repositorio: `git clone https://github.com/tu_usuario/tu_repositorio.git`
2. Navega al directorio del proyecto: `cd tu_repositorio`
3. Instala las dependencias: `bundle install`
4. Ejecuta las migraciones: `rails db:migrate`
5. Inicia el servidor: `rails server`

Abrir en el navegador `localhost:3000/personas` para ver la aplicación en acción.


## Nota
Los archivos se encuentran en la rama **master**.

-> Versión de Ruby: 3.3.2
-> Versión de Rails: 7.1.3.4
-> Versión de SQLite3: 3.42.0
