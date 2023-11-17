create table if not exists ganere(
	id SERIAL primary key,
	name VARCHAR(60) not null
);


create table if not exists performer(
	id SERIAL primary key,
	name VARCHAR(60) not null
);


create table if not exists ganere_performer(
ganere_id integer references ganere(id),
performer_id integer references performer(id),
CONSTRAINT pk PRIMARY key (ganere_id,performer_id )
);


create table if not exists album(
id SERIAL primary key,
title VARCHAR(60) not null,
yer_of_rlease DATE not null
);


create table if not exists performer_album(
performer_id integer references performer(id),
album_id integer references album(id),
constraint pk_performer_album primary key (performer_id, album_id)
);


create table if not exists song(
id SERIAL primary key,
name VARCHAR(60) not null,
duration integer not null,
album_id integer references album(id)
);


create table if not exists collection(
id SERIAL primary key,
title VARCHAR(60) unique not null,
yer_of_release DATE not null
);

create table if not exists song_collection(
song_id integer references song(id),
collection_id integer references collection(id),
constraint pk_song_collection primary key (song_id, collection_id)
);

