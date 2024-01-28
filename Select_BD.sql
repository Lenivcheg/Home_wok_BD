-- Название и продолжительность самого длительного трека.
select name, duration  from song
order by duration desc
limit 1;

select max(duration) from song;

-- Название треков, продолжительность которых не менее 3,5 минут.

select name from song
where duration >= '00:03:30';


-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.

select title  from collection
where yer_of_release between 2018 and 2020;

-- Исполнители, чьё имя состоит из одного слова.

select name  from performer
where  name not like '% %';

-- Название треков, которые содержат слово «мой» или «my»

select name  from song
where  name  like '%my%';

-- Количество исполнителей в каждом жанре.

select  name,  count(performer_id)  from ganere g
left join ganere_performer gp on g.id = gp.ganere_id
group by name;

--Количество треков, вошедших в альбомы 2019–2020 годов.
-- почему то не отображает корректно, вместо 6и треков 3 ???

select count(name)  from song s
full join album a on s.id = a.id
where yer_of_release between 1995 and 2030
;

--Так тоже не сработало

select title, yer_of_release, count(s.name)  from album a
left join song s on a.id  = s.album_id
where yer_of_release between 1995 and 2012
group by a.title , a.yer_of_release;

-- Средняя продолжительность треков по каждому альбому.

select avg(duration), title  from song s
join album a on s.id = a.id
group by title
;
-- Все исполнители, которые не выпустили альбомы в 2020 году.

select name from performer p
join performer_album pa on p.id = pa.performer_id
join album a on a.id = pa.performer_id
where a.yer_of_release < 2000
;
-- Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).

select c.title from collection c
left join song_collection sc on c.id = sc.song_id
left join song s on sc.song_id = s.id
left join album a on s.album_id =  a.id
left join performer_album pa on a.id = pa.album_id
left join performer p on pa.performer_id = p.id
--where p.name = "Ferry"
;

