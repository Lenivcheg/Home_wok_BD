-- insert ganere

insert into ganere(name)
	VALUES('disco');

insert into ganere(name)
	VALUES('rock');

insert into ganere(name)
	VALUES('electronic');

insert into ganere(name)
	VALUES('classical');

-- insert performer

insert into performer (name)
	VALUES('Zack Knight');

insert into performer (name)
	VALUES('Sophie May');

insert into performer (name)
	VALUES('Jamie Muscato');

insert into performer (name)
	VALUES('Tubbo');

insert into performer (name)
	VALUES('Ferry');

-- insert ganere_performer

insert into ganere_performer
	VALUES(1,3);

insert into ganere_performer
	VALUES(1,6);

insert into ganere_performer
	VALUES(1,4);

insert into ganere_performer
	VALUES(2,4);

insert into ganere_performer
	VALUES(2,1);

insert into ganere_performer
	VALUES(2,5);

insert into ganere_performer
	VALUES(3,3);

insert into ganere_performer
	VALUES(3,1);

insert into ganere_performer
	VALUES(3,6);

insert into ganere_performer
	VALUES(4,4);

insert into ganere_performer
	VALUES(4,5);

insert into ganere_performer
	VALUES(4,6);


-- insert performer album

insert into album
	VALUES(1, 'Red River Blue ', 2011);

insert into album
	VALUES(2, 'The Sign', 1993);

insert into album
	VALUES(3, 'Surfacing', 1997);

-- insert  song

insert into song
	VALUES(1, 'positions', '0:3:55',1);

insert into song
	VALUES(2, 'See my Nobody', '0:3:55',2);

insert into song
	VALUES(3, 'Paradise', '0:3:55',3);

insert into song
	VALUES(4, 'Holy my', '0:6:15',1);

insert into song
	VALUES(5, 'Tick Tock', '0:5:15',2);

insert into song
	VALUES(6, 'UFO', '0:4:15',3);

insert into song
	VALUES(7, 'Loading', '0:2:45',1);

insert into song
	VALUES(8, 'For The Night', '0:3:15',2);

insert into song
	VALUES(9, 'Zero Zero', '0:3:00',3);

-- insert  collection

insert into collection
	VALUES(1, 'Happy Times', 2017);

insert into collection
	VALUES(2, 'Sleepy Sonnets', 2019);

insert into collection
	VALUES(3, 'Late Afternoon Coffee', 2020);

insert into collection
	VALUES(4, 'Moody March', 2021);

-- insert  song_collection

insert into song_collection
	VALUES(1,4);

insert into song_collection
	VALUES(3,4);

insert into song_collection
	VALUES(9,4);

insert into song_collection
	VALUES(6,3);

insert into song_collection
	VALUES(5,3);

insert into song_collection
	VALUES(9,3);

insert into song_collection
	VALUES(2,2);

insert into song_collection
	VALUES(7,2);

insert into song_collection
	VALUES(8,2);

insert into song_collection
	VALUES(1,1);

insert into song_collection
	VALUES(5,1);

insert into song_collection
	VALUES(6,1);



