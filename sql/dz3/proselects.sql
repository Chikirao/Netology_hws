-- insert запросы для работы селектов

insert into albums (name, year) 
values('anthems', 2019);

insert into albums_executors 
values
(1, 10),
(3, 9),
(5, 2);

update tracks
set album_id = 9 where track_id = 12;

insert into albums (name, year) 
values('freack show', 2020);

insert into tracks (name, lenght, album_id)
values
('bad song(', '2m43s', 3);

-- select запросы

SELECT ge.genre_id AS gi, COUNT(*), g.name
FROM genres_executors ge
JOIN genres g ON ge.genre_id = g.genre_id
GROUP BY gi, g.name
ORDER BY gi;

select count(*)
from tracks t
join albums a on a.album_id = t.album_id
where "year" between 2019 and 2020;

select album_id, avg(lenght) avglen
from tracks tr
group by album_id
order by album_id;

SELECT a."name", e."name" 
from albums_executors ae
join albums a on ae.album_id = a.album_id
join executors e on ae.executor_id = e.executor_id
where a."year" != 2020;

select c."name"
from tracks t
join collections_tracks ct on ct.track_id = t.track_id 
join collections c on c.collection_id = ct.collection_id
join albums_executors ae on t.album_id = ae.album_id 
join executors e on e.executor_id = ae.executor_id 
where e.executor_id = 2;

select a."name"
from albums a 
join albums_executors ae on a.album_id = ae.album_id 
join executors e on ae.executor_id = e.executor_id 
join genres_executors ge on ge.executor_id = e.executor_id 
join genres g on g.genre_id = ge.genre_id
group by a."name" 
having count(*) > 1;

SELECT name
FROM tracks
WHERE track_id NOT IN (SELECT track_id FROM collections_tracks);

select e."name"
from tracks t
join albums a on a.album_id = t.album_id
join albums_executors ae on ae.album_id = a.album_id 
join executors e on e.executor_id = ae.executor_id 
where t.lenght = (select min(lenght) from tracks);

select a."name"
from albums a 
right join tracks t on t.album_id = a.album_id
group by a."name"
having count(*) = (select count(*) from tracks group by album_id order by count(*) limit 1);