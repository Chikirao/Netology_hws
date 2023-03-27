-- select запросы

-- 1
SELECT ge.genre_id AS gi, COUNT(*), g.name
FROM genres_executors ge
JOIN genres g ON ge.genre_id = g.genre_id
GROUP BY gi
ORDER BY gi;
-- 2
select count(*)
from tracks t
join albums a on a.album_id = t.album_id
where "year" between 2019 and 2020;
-- 3
select album_id, avg(lenght) avglen
from tracks tr
group by album_id
order by album_id;
-- 4
select e."name"
from executors e 
where e."name" not in (
	select e2."name"
	from executors e2
	join albums_executors ae on e2.executor_id = ae.executor_id
	join albums a on ae.album_id = a.album_id 
	where a."year" = 2020
);
-- 5
select c."name"
from tracks t
join collections_tracks ct on ct.track_id = t.track_id 
join collections c on c.collection_id = ct.collection_id
join albums_executors ae on t.album_id = ae.album_id 
join executors e on e.executor_id = ae.executor_id 
where e."name" = 'Ivan Ivanov';
-- 6
select distinct a."name"
from albums a 
join albums_executors ae on a.album_id = ae.album_id 
join executors e on ae.executor_id = e.executor_id 
join genres_executors ge on ge.executor_id = e.executor_id 
group by a."name"
having count(ge.genre_id) > 1;
-- 7
SELECT t."name"
FROM tracks t
left join collections_tracks ct on ct.track_id = t.track_id
where ct.track_id is NULL;
-- 8
select e."name"
from tracks t
join albums a on a.album_id = t.album_id
join albums_executors ae on ae.album_id = a.album_id 
join executors e on e.executor_id = ae.executor_id 
where t.lenght = (select min(lenght) from tracks);
-- 9
select a."name"
from albums a 
right join tracks t on t.album_id = a.album_id
group by a."name"
having count(*) = (select count(*) from tracks group by album_id order by count(*) limit 1);