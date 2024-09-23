use redMascotas;

insert into users values (1, "ALexis Leonel", "Guzman Gozalez", "1234567890", "alexis@gmail.com", "alexis123");
insert into users values (2, "Kevin Jimmy", "Morales Perez", "1234567890", "kevin@gmail.com", "kevin123");

insert into pets values (1, "Panfilo", 2, 1);
insert into pets values (2, "Monhito", 4, 2);

insert into friends values (1,2);
insert into friends values (2,1);

insert into posts values (1,1,"Este es el contenido","FOTITO");
insert into posts values (2,1,"Este es el contenido","FOTITO");

insert into comments values (1, "Contenido del comentario", 1, 2); 
insert into comments values (2, "Contenido del comentario", 2, 2); 

insert into albums values (1, "Album 1", "2024-09-04");
insert into albums values (2, "Album 2", "2024-09-05");

insert into media values (1, "CONTENIDO", 1);
insert into media values (2, "CONTENIDO", 2);

insert into profile values (1, 2, 1);
insert into profile values (2, 1, 2);

insert into histories values (1, "CONTENIDO", 1);
insert into histories values (2, "CONTENIDO", 2);