create table if not exists ganere(
	id SERIAL primary key,
	name VARCHAR(60) unique not null
);


create table if not exists performer(
	id SERIAL primary key,
	name VARCHAR(60) unique not null
);


create table if not exists ganere_performer(
ganere_id INTEGER references ganere(id),
performer_id INTEGER references performer(id),
CONSTRAINT pk PRIMARY key (ganere_id,performer_id )
);


create table if not exists album(
id SERIAL primary key,
title VARCHAR(60) unique not null,
yer_of_rlease c not null check (yer_of_rlease > 1900)
);

alter table album
rename column yer_of_rlease to yer_of_release

create table if not exists performer_album(
performer_id INTEGER references performer(id),
album_id INTEGER references album(id),
constraint pk_performer_album primary key (performer_id, album_id)
);


create table if not exists song(
id SERIAL primary key,
name VARCHAR(60) not null,
duration TIME not null,
album_id INTEGER references album(id)
);


create table if not exists collection(
id SERIAL primary key,
title VARCHAR(60) unique not null,
yer_of_release INTEGER not null check(yer_of_release > 1900)
);

create table if not exists song_collection(
song_id INTEGER references song(id),
collection_id INTEGER references collection(id),
constraint pk_song_collection primary key (song_id, collection_id)
);








