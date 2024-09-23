create schema redMascotas;
use redMascotas;

create table USERS (
	id_user 	int not null,
    first_name  varchar(45) not null,
    last_name 	varchar(45) not null,
    phone_number varchar(10) not null,
    email 		 varchar(45) not null,
    password 	varchar(100) not null,
    primary key (id_user)
);

create table PETS (
	id_pet 	int not null,
    name 	varchar(45) not null,
    age		int not null,
    id_user int not null,
    primary key (id_pet),
    foreign key (id_user) references USERS (id_user)
);

create table ALBUMS (
	id_album 	int not null,
    name_album 	varchar(45) not null,
    date_creation date not null,
    primary key (id_album)
);

create table MEDIA (
	id_media 	int not null,
    contend		blob not null,
    id_album 	int not null,
    primary key (id_media),
    foreign key (id_album) references ALBUMS (id_album)
);

create table PROFILE (
	id_pet int not null,
    id_album int not null,
    id_profile int not null,
    primary key (id_profile),
    foreign key (id_pet) references PETS (id_pet),
    foreign key (id_album) references ALBUMS (id_album)
);

create table HISTORIES (
	id_history 	int not null,
    content 	blob not null,
    id_profile  int not null,
    primary key (id_history),
    foreign key (id_profile) references PROFILE(id_profile)
); 

create table FRIENDS (
	id_friend int not null,
    id_pet 	  int not null,
    primary key (id_friend, id_pet),
    foreign key (id_pet) references PETS (id_pet)
);

create table POSTS (
	id_post 	int not null,
    id_pet 		int not null,
    content_text 	varchar(45) not null,
    picture			blob not null,
    primary key (id_post),
    foreign key (id_pet) references PETS (id_pet)
);

create table COMMENTS (
	id_comment 	int not null,
    contend_text 	varchar(45) not null,
    id_post 	int not null,
    id_pet 		int not null,
    primary key (id_comment),
    foreign key (id_post) references POSTS (id_post),
    foreign key (id_pet) references PETS (id_pet)
);