--- Classes of School
-- tabela de curso
CREATE TABLE course (
    course_number varchar(8) PRIMARY KEY,
    course_name varchar(25) not null unique,
    department varchar(4) not null, 
    credit_hours char (1) not null,


);
---tabela de sessao de cada materia com seus respectivos professores
CREATE TABLE section(
    section_identifier varchar(3) PRIMARY KEY,
    course_number varchar(8) FOREIGN KEY,
    semester varchar(6) not null
    year_ char(2) not null,
    instructor varchar(8) not null,
);
-- tabela dos estudantes
CREATE TABLE student (
    student_number varchar(2) PRIMARY KEY,
    name_ varchar(10) not null,
    class char(1)  not null,
    major varchar(4) not null,

)
--tabela de grade de aulas
CREATE TABLE grade_report(
    student_number varchar(2) PRIMARY KEY,
    section_identifier varchar(3) PRIMARY KEY,
    grade char(1) not null,

)
--tabela de aulas que contem pre requisito para participar
CREATE TABLE prerequisite(
    prerequisite_number varchar(8) PRIMARY KEY
    course_number varchar(8) FOREIGN KEY
    
)


