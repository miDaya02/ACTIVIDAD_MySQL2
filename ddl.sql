

CREATE DATABASE IF NOT EXISTS BD_Universidad;

USE BD_Universidad;

CREATE TABLE IF NOT EXISTS Cursos (
	id_curso INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Profesores (
	id_profesor INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE  IF NOT EXISTS Estudiantes (
	id_estudiante INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    telefono INT NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Horarios (
	id_horario INT PRIMARY KEY AUTO_INCREMENT,
    dia ENUM('Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sabado'),
    hora_entrada TIME,
    hora_salida time
);

CREATE TABLE IF NOT EXISTS Aulas (
	id_aula INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Asignaturas (
	id_asignatura INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL
);


CREATE TABLE IF NOT EXISTS Asignaturas_Cursos (
	id_asignatura_curso INT PRIMARY KEY AUTO_INCREMENT,
    id_curso INT,
    id_asignatura INT,
    id_profesor INT,
    FOREIGN KEY (id_curso) REFERENCES Cursos(id_curso),
    FOREIGN KEY (id_asignatura) REFERENCES Asignaturas(id_asignatura),
    FOREIGN KEY (id_profesor) REFERENCES Profesores(id_profesor)
);

CREATE TABLE IF NOT EXISTS Estudiantes_Cursos_Asignaturas (
	id_estudiante_curso INT PRIMARY KEY AUTO_INCREMENT,
    id_estudiante INT,
    id_asignatura_curso INT,
    FOREIGN KEY (id_estudiante) REFERENCES Estudiantes(id_estudiante),
    FOREIGN KEY (id_asignatura_curso) REFERENCES Asignaturas_Cursos(id_asignatura_curso)
);

create table if not exists Aulas_Cursos_Asignaturas (
	id_aula_curso_asignatura INT PRIMARY KEY AUTO_INCREMENT,
    id_asignatura_curso INT,
    id_aula INT,
    FOREIGN KEY (id_asignatura_curso) REFERENCES Asignaturas_Cursos(id_asignatura_curso),
    FOREIGN KEY (id_aula) REFERENCES Aulas(id_aula)
);

CREATE TABLE IF NOT EXISTS Horarios_Cursos_Asignaturas (
	id_horario_curso INT PRIMARY KEY AUTO_INCREMENT,
    id_asignatura_curso INT,
    id_horario INT,
    FOREIGN KEY (id_asignatura_curso) REFERENCES Asignaturas_Cursos(id_asignatura_curso),
    FOREIGN KEY (id_horario) REFERENCES Horarios(id_horario)
);
    

