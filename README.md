# BD Universidad

## Tabla de contenido
| Indice | Título  |
|--|--|
| 1. | [Diagrama uml en](#Diagrama_UML_ER) |
| 2. | [PRIMERA FORMA NORMAL (1FN)](#PRIMERA_FORMA_NORMAL_(1FN)) |
| 3. | [SEGUNDA FORMA NORMAL (2FN)](#SEGUNDA_FORMA_NORMAL_(2FN)) |
| 4. | [TERCERA FORMA NORMAL (3FN)](#TERCERA_FORMA_NORMAL_(3FN)) |
| 5. | [CUARTA FORMA NORMAL (4FN)](#CUARTA_FORMA_NORMAL_(4FN)) |
| 6. | [Autoras](#Autoras) |


## Diagrama UML ER





![ER](/images/1.jpg)



## PRIMERA FORMA NORMAL (1FN)
En esta fase, nos aseguramos de que no haya grupos repetidos ni valores compuestos en las tablas. En nuestro caso, los datos ya estaban organizados de manera adecuada, por lo que no fue necesario realizar ajustes.

## SEGUNDA FORMA NORMAL (2FN)
Para alcanzar la segunda forma normal, es fundamental eliminar las dependencias parciales. Esto implica separar la información en varias tablas, de manera que cada campo dependa completamente de una clave primaria. Para lograrlo, creamos las siguientes tablas: Estudiantes, Cursos, Aulas, Asignaturas y Horarios. Cada campo tiene su tabla correspondiente. Además, establecimos tablas adicionales para gestionar las relaciones de muchos a muchos entre las diferentes entidades:

- Asignaturas-Cursos: Un curso puede tener varias asignaturas, y a su vez, una asignatura puede ser parte de múltiples cursos.
- Aulas-Cursos-Asignaturas: Una asignatura de un curso puede impartirse en diferentes aulas, y en una misma aula se pueden ofrecer diversas asignaturas de distintos cursos.
- Horarios-Cursos-Asignaturas: En un mismo horario, pueden impartirse varias asignaturas de diferentes cursos, y una asignatura dada en un curso puede tener diferentes horarios.
- Estudiantes-Cursos-Asignaturas: Un estudiante puede estar matriculado en varios cursos y asignaturas, y en una misma asignatura de un curso puede haber múltiples estudiantes.

## TERCERA FORMA NORMAL (3FN)
En esta etapa, nos aseguramos de que no existan dependencias transitivas entre los campos. En nuestro caso, las tablas ya estaban organizadas adecuadamente, por lo que no fue necesario realizar modificaciones.

## CUARTA FORMA NORMAL (4FN)
En esta fase, se busca eliminar las dependencias multivaluadas. En nuestro caso, no existían dependencias multivaluadas, por lo que no fue necesario realizar cambios adicionales.

# Autoras: 
- [Michelle Sánchez](https://github.com/miDaya02)
- [Laura Rodriguez](https://github.com/Laura2ndrea)

