create database gestiondefallas;

use gestiondefallas;


create table Administrador 
(
 idAdministrador int not null,
 nombre varchar (45) not null,
 apellido varchar (45) not null,
 num_identificacion int not null,
 contra varchar (45) not null,
 correo varchar (45) not null,
primary key (idAdministrador)
);

create table Profesores 
(
    
    idProfesores int not null,
    nombres varchar (45) not null,
    apellidos varchar(45) not null,
    facultad_area varchar (45) not null,
    telefono int ,
    correo varchar (45) ,
	primary key (idProfesores)
 
);

create table materias
(
    
	idmaterias int not null,
	nom_materia varchar (80) not null,
	ciclo int not null,
    salon varchar(45) not null,
    jornada varchar (45) not null,
    hora varchar(20) not null,
    programa varchar (45) not null,
    Profesores_idProfesores int not null,
    nom_profesor varchar (45) not null,
    primary key (idmaterias),
    foreign key (Profesores_idProfesores) references Profesores (idProfesores)
);


create table reporte 

(
	idreporte int not null,
    fallas int not null,
    observaciones varchar (45) not null,
    asignatura varchar (45) not null,
    fecha date not null,
    semana int not null,
    Profesores_idProfesores int not null,
    primary key (idreporte), 
    foreign key (Profesores_idProfesores) references Profesores(idProfesores)

);


create table salon
(
   idsalon int not null,
   sillas int not null,
   piso int not null,
   materias_idmaterias int not null,
   primary key (idsalon),
   foreign key (materias_idmaterias) references materias(idmaterias)
);

create table facultad
(
   idfacultad int not null,
   nom_facultad varchar(45) not null,
   decano varchar(45) not null,
   piso int not null,
   Profesores_idProfesores int not null,
   foreign key (Profesores_idProfesores) references Profesores(idProfesores)
);


-- inserccion de registros 

insert into Profesores values (01, 'Claudia Liliana', 'Rodriguez Nitola', 'Lenguaje', null, null);
insert into Profesores values (02, 'Daniel', ' Hernandez Gomez', 'Lenguaje',null, null);
insert into Profesores values (03, 'Leidy Tatiana', 'Gonzales Frayle', 'Lenguaje',null, null);
insert into Profesores values (04, 'Karen Johana', 'Lievano Espinosa', 'Lenguaje',null, null);
insert into Profesores values (05, 'Jenny Kariana', 'Bautista Sagobal', 'Fordefor',null, null);
insert into Profesores values (06, 'Hassbleibie', ' Alape Vergara', 'Salud',null, null);
insert into Profesores values (07, 'Monica Paola', ' Bejarano Castillo', 'Salud',null, null);
insert into Profesores values (08, 'Diego Leonardo', 'Cardona Bermudez', 'Salud',null, null);
insert into Profesores values (09, 'Juan Camilo', 'Ceballos Huertas', 'Salud',null, null);
insert into Profesores values (010, 'Olga Lucia ', 'Garcia Castiblanco', 'Salud',null, null);
insert into Profesores values (011, 'Elvira Constanza ', 'Juvinao Borras', 'Salud',null, null);
insert into Profesores values (012, 'Ana Lucia ', 'Meza Ponce', 'Salud',null, null);
insert into Profesores values (013, 'Hugo', 'Morales Vargas', 'Salud',null, null);
insert into Profesores values (014, 'Cristhiam Camilo', 'Quiroga Nieto', 'Salud',null, null);
insert into Profesores values (015, 'Diego Andres', 'Sanchez Mendez', 'Salud',null, null);
insert into Profesores values (016, 'Luz Veronica', 'Aponte Vasquez', 'Hospitalidad',null, null);
insert into Profesores values (017, 'Jhon Anderson', 'Bautista Medina', 'Hospitalidad',null, null);
insert into Profesores values (018, 'Carlos Gabriel', 'Caycedo Restrepo', 'Hospitalidad',null, null);
insert into Profesores values (019, 'Cristian Camilo', 'Celis Galindo', 'Hospitalidad',null, null);
insert into Profesores values (020, 'Jorge Hernando', 'Delgado Cordoba', 'Hospitalidad',null, null);
insert into Profesores values (021, 'Cristian Camilo ', 'Gaitan Mancipe', 'Hospitalidad',null, null);
insert into Profesores values (022, 'Dalia Gabriela', 'Galvis Salazar', 'Hospitalidad',null, null);
insert into Profesores values (023, 'Jhon Alexander', 'Gomez Sanchez', 'Hospitalidad',null, null);
insert into Profesores values (024, 'Sandra Patricia', 'Jaramillo Botero', 'Hospitalidad',null, null);
insert into Profesores values (025, 'Jorge Ivan', 'Medina Perez', 'Hospitalidad',null, null);
insert into Profesores values (026, 'Maria Rubiana', 'Oliveros Forero', 'Hospitalidad',null, null);
insert into Profesores values (027, 'Yohan Julian', 'Vargas Castellanos', 'Hospitalidad',null, null);
insert into Profesores values (028, 'Sindy Lorena', 'Wilches Piñeros', 'Hospitalidad',null, null);
insert into Profesores values (029, 'Adriana Marcela', 'Gomez Bermudez','Idiomas', null,null);
insert into Profesores values (030, 'Dayra Isabel', 'Martinez Galindo','Idiomas', null,null);
insert into Profesores values (031, 'Denisse', 'Mejia Lancheros','Idiomas', null,null);
insert into Profesores values (032, 'Kate Jennyffer', 'Pedraza Baron','Idiomas', null,null);
insert into Profesores values (033, 'Alejandra', 'Zapata Cortes','Idiomas', null, null);
insert into Profesores values (034, 'Ricardo Javier', 'Albarracin Vanoy','Emprendimiento', null, null);
insert into Profesores values (035, 'Javier', 'Aldana Jimmy','Emprendimiento', null, null);
insert into Profesores values (036, 'Javier Andres', 'Almeida Moreno','Emprendimiento', null, null);
insert into Profesores values (037, 'Nataly', 'Blanco Guaquetá','Emprendimiento', null, null);
insert into Profesores values (038, 'Hector Fabio', 'Calderon Beltran','Emprendimiento', null, null);
insert into Profesores values (039, 'Daniel', 'Carmona Rodriguez','Emprendimiento', null, null);
insert into Profesores values (040, 'Maria Fernanda', 'Collazos','Emprendimiento', null, null);
insert into Profesores values (041, 'Luz Alcira', 'Cortes Angel','Emprendimiento', null, null);
insert into Profesores values (042, 'Edwin Giovanny', 'Duarte Suarez','Emprendimiento', null, null);
insert into Profesores values (043, 'Briyit Estefania', 'Florez Castellanos','Emprendimiento', null, null);
insert into Profesores values (044, 'Luis Hernado', 'Giraldo Valdes','Emprendimiento', null, null);
insert into Profesores values (045, 'Juan Pablo', 'Gonzales Rojas','Emprendimiento', null, null);
insert into Profesores values (046, 'Edisson', 'Montaña Franco','Emprendimiento', null, null);
insert into Profesores values (047, 'William', 'Ovalle Matamoros','Emprendimiento', null, null);
insert into Profesores values (048, 'Maria Esperanza', 'Piñeros Piñeros','Emprendimiento', null, null);
insert into Profesores values (049, 'Javier', 'Posada Cortina','Emprendimiento', null, null);
insert into Profesores values (050, 'Andres Felipe', 'Prieto Lizarazo','Emprendimiento', null, null);
insert into Profesores values (051, 'Eduardo Andres', 'Ramos Garcia','Emprendimiento', null, null);
insert into Profesores values (052, 'Nestor Andres', 'Rodriguez Garcia','Emprendimiento', null, null);
insert into Profesores values (053, 'Jose Luis', 'Rodriguez Lagos','Emprendimiento', null, null);
insert into Profesores values (054, 'Fiorella Constanza', 'Rojas Rodriguez','Emprendimiento', null, null);
insert into Profesores values (055, 'Marco Dionicio', 'Salcedo Garzon','Emprendimiento', null, null);
insert into Profesores values (056, 'Andres David', 'Suarez','Emprendimiento', null, null);
insert into Profesores values (057, 'Himer Antonio', 'Tellez','Emprendimiento', null, null);
insert into Profesores values (058, 'Juan Pablo', 'Traslaviña Vega','Emprendimiento', null, null);
insert into Profesores values (059, 'Isabel', 'Duarte', 'Electiva',null,null);
insert into Profesores values (060, 'Cesar Augusto', 'Hernandez Ramos', 'Electiva',null,null);
insert into Profesores values (061, 'Cristian Camilo', 'Rojas Calcetero', 'Electiva',null,null);

-- INSERCCION DE REGISTROS TABLA MATERIAS


insert into materias values (001,'TENICAS DE COCINA NACIONAL',4,'Cocina 1','Diurna', '7:00 a 10:00', 'GASD1',020,'Jorge Hernando Delgado Cordoba');
insert into materias values (002,'PROFUNDIZACIÓN',7,'Cocina 2','Diurna', '7:00 a 10:00', 'GASD1',019,'Cristian Camilo Celis' );
insert into materias values (003,'TECNICAS DE COCINA II',2,'Cocina 3','Diurna','7:00 a 10:00', 'GASD1', 018, 'Carlos Gabriel Caycedo Restrepo' );
insert into materias values (004,'COCTELERIA',5,'Mesa y Bar 1','Diurna','7:00 a 10:00', 'GASD 1',017, 'Jhon Anderson Bautista Medina' );
insert into materias values (005,'TECNICAS DE PANADERIA',3,'Reposteria 2','Diurna', '7:00 a 10:00', 'GASD1',016, 'Luz Veronica Aponte Vasquez' );
insert into materias values (006,'INTRUCCIÓN DE GESTION AMBIENTAL',1,'Lab. Gest.Ambiental','Diurna', '7:00 a 10:00', 'GASD1',040,'Maria Fernanda Collazos');
insert into materias values (007,'TECNICAS DE MESA II APLICADAS AL SERVICIO AL CLIENTE',3,'Mesa y Bar 2','Diurna', '7:00 a 10:00', 'GASD2',026,'Mariana  Oliveros Forero' );
insert into materias values (008,'INFORMATICA II',2,'Sala Sistemas 1','Diurna','7:00 a 8:30', 'MERD1 ',051, 'Eduardo Andres Ramos Garcia');
insert into materias values (009,'PROFUNDIZACIÓN',7,'Sala Sistemas 2','Diurna', '7:00 a 8:30', 'CYND1',048,' Maria Esperanza Piñeros Piñeros');
insert into materias values (0010,'PROFUNDIZACIÓN',7,'Sala Software 1','Diurna', '7:00 a 10:00', 'Gastronomia',025, 'Jorge Ivan Medina Piñeros' );
insert into materias values (0011,'SOPORTE Y MANTENIMIENTO II',7,'Sala Software 2','Diurna', '7:00 a 10:00', 'Gastronomia', 01,'Jimmy Javier Aldana');
insert into materias values (0012,'INGLES I',3,'701','Diurna', '7:00 a 10:00', 'Gastronomia',01, 'Dayra Isabel Martinez Galindo' );
insert into materias values (0013,'ORTODONCIA I',5,'Lab de Ceramica','Diurna','7:00 a 10:00', 'Gastronomia',01, 'Diego Leonardo Cardona' );
insert into materias values (0014,'LABORATORIO DE BIOMATERIALES',3,'Lab. Metalurgia','Diurna','7:00 a 10:00', 'Gastronomia',01, 'Constanza Juvinao' );
insert into materias values (0015,'BIOMATERIALES I',2,'Lab.Multifuncional','Diurna', '7:00 a 10:00', 'Gastronomia',01,'Ana Lucia Meza' );
insert into materias values (0016,'PROTESIS REMOVIBLES',7,'Lab.Yesos','Diurna','7:00 a 10:00', 'Gastronomia',01,'Chistian Camilo Quiroga' );
insert into materias values (0017,'COSTOS E INVENTARIOS',3,'403','Diurna', '7:00 a 8:30', 'Gastronomia',01, 'Juan Pablo Traslaviña' );
insert into materias values (0018,'SERVICIO AL CLIENTE',1,'501','Diurna', '7:00 a 10:00', 'Gastronomia',01, 'Karen Johana Lievano Espinosa' );
insert into materias values (0019,'PROYECTO II EMPLEABILIDAD',5,'502','Diurna', '7:00 a 10:00', 'Gastronomia',01, 'Dalia Gabriela Galvis Salazar' );
insert into materias values (0020,'ENOLOGIA',6,'Cocina 1','504', '7:00 a 10:00', 'Gastronomia',01,'Briyit Estefania Flores Castellanos');
insert into materias values (0021,'FUNDAMENTOS ECONOMICOS',1,'505','Diurna', '7:00 a 10:00', 'Gastronomia',01, 'Marco Salcedo' );
insert into materias values (0022,'ZONAS FRANCAS',6,'506-A','Diurna','7:00 a 10:00', 'Gastronomia',01,'Javier Posada' );
insert into materias values (0023,'MERCADEO',5,'507','Diurna', '7:00 a 10:00', 'Gastronomia',01,'Sandra Patricia Jaramillo botero' );
insert into materias values (0024,'COMPRAS Y ABASTESIMIENTO',3,'503','Diurna','7:00 a 10:00', 'Gastronomia',01, 'Lorena Wilches' );
insert into materias values (0025,'MOMENTOS DE VERDAD EN SERVICIO AL CLIENTE',2,'601','Diurna', '7:00 a 8:30', 'Gastronomia',01,'Claudia Liliana Rodriguez' );
insert into materias values (0026,'COMPETENCIAS COMUNICATIVAS I',1,'602','Diurna', '7:00 a 8:30', 'Gastronomia',01,'Edwin Duarte');
insert into materias values (0027,'PROCEDIMIENTOS TRIBUTARIOS',7,'603','Diurna', '7:00 a 10:00', 'Gastronomia',01, 'Luis Hernando Giraldo' );
insert into materias values (0028,'CONTABILIDAD BASICA',1,'604','Diurna', '7:00 a 10:00', 'Gastronomia',01,'Jhon Alexander Gomez Sanchez' );
insert into materias values (0029,'MANIPULACIÓN DE ALIMENTOS',1,'605','Diurna', '7:00 a 8:30', 'Gastronomia',01, '');
insert into materias values (0030,'COMPETENCIAS COMUNICATIVAS II',2,'606','Diurna','7:00 a 8:30', 'Gastronomia',01,'Leidy Tatiana Gonzales Frayle');
insert into materias values (0031,'CONTABILIDAD INTERNACIONAL',3,'703','Diurna', '7:00 a 10:00', 'Gastronomia',01, 'Lux Alcira Cortez' );
insert into materias values (0032,'INGLES I',6,'705','Diurna', '7:00 a 8:30', 'Gastronomia',01,'Monica Bejarano' );
insert into materias values (0033,'PRACTICA COMUNITARIA',7,'Biblioteca','Diurna', '7:00 a 10:00', 'Gastronomia',01,'Nataly Guaqueta' );
insert into materias values (0034,'INFORMATICA II',2,'Sala De Sistemas ','Diurna', '8:30 a 10:00', 'Gastronomia',01,'Eduardo Andres Ramos Garcia');
insert into materias values (0035,'SOPORTE Y MANTENIMIENTO I',3,'Sala De Sistemas 2','Diurna', '8:30 a 10:00', 'Gastronomia',01,'Diego Sanches' );
insert into materias values (0036,'PRINCIPIOS DE BIOLOGIA',1,'403','Diurna', '8:30 a 10:00', 'Gastronomia',01,'Jhon Alexander Gomez Sanchez' );
insert into materias values (0037,'MANIPULACION DE ALIMENTOS',2,'601','Diurna', 7-10, 'Gastronomia',01,'Esperanza Piñeros');
insert into materias values (0038,'PROFUNDIZACION',7,'602','Diurna', '8:30 a 10:00', 'Gastronomia',01, 'Claudia Liliana Rodriguez' );
insert into materias values (0039,'COMPETENCIAS COMUNICATIVAS I',1,'605','Diurna', '8:30 a 10:00', 'Gastronomia',01,'Leydi Tatiana Gonzales Frayle');
insert into materias values (0040,'COMPETENCIAS COMUNICATIVAS II',2,'606','Diurna', '8:30 a 10:00', 'Gastronomia',01,'Alejandra Zapata');
insert into materias values (0041,'INGLES III',9,'701','Diurna', '8:30 a 10:00', 'Gastronomia',01,'Hector Fabio Zapata');
insert into materias values (0042,'PARTICIPACIÓN CIUDADANA',6,'705','Diurna', '8:30 a 10:00', 'Gastronomia',01,'Hector Fabio Calderon' );
insert into materias values (0043,'TECNICAS DE COCINA I',1,'Cocina 2','Especial', '10:00 a 1:00', 'Gastronomia',01,'Luz Veronica Aponte Vasquez' );
insert into materias values (0044,'TECNICAS DE PANADERIA',3,'Respoteria 1','Especial', '10:00 a 1:00', 'Gastronomia',01,'Cristian Camilo Gaitan Mancipe');
insert into materias values (0045,'COCTELERIA',5,'Respoteria 2','Especial', '10:00 a 1:00', 'Gastronomia',01,'Jhon Anderson Bautista Medina' );
insert into materias values (0046,'PROYECTO EMPRENDIMIENTO III',7,'602','Especial', '10:00 a 1:00', 'Gastronomia',01, 'Daniel Hernandez Gomez');
insert into materias values (0047,'ORGANIZACIÓN EVENTOS',6,'605','Especial', '10:00 a 1:00', 'Gastronomia',01,'Sandra Patricia Jaramillo Botero');
insert into materias values (0048,'PROYECTO IV EMPLEABILIDAD III',7,'606','Especial', '10:00 a 1:00', 'Gastronomia',01,'Leydi Tatiana Gonzales Frayle');

select * from materias;
select * from Profesores;
select apellidos from Profesores;
select nom_materia from materias;
select nom_materia, hora from materias;
select nombres, facultad_area from Profesores;
select nom_profesor from materias;
select nom_profesor, nom_materia from materias;
