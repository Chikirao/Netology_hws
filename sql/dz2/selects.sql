select name, year  from albums
where year = 2018;

select name, lenght
from tracks
where lenght = (
	select max(lenght) from tracks
);

select name
from tracks
where lenght > interval '3m30s';

select name, year 
from collections
where year between 2018 and 2020;

SELECT name
FROM executors
WHERE split_part(name, ' ', 1) = name;

SELECT name
FROM tracks
WHERE name LIKE '%мой%' OR name LIKE '%my%';


-- Если надо почистить:

SELECT setval(pg_get_serial_sequence('executors', 'executor_id'), 1, false);
SELECT setval(pg_get_serial_sequence('tracks', 'track_id'), 1, false);
SELECT setval(pg_get_serial_sequence('genres', 'genre_id'), 1, false);
SELECT setval(pg_get_serial_sequence('albums', 'album_id'), 1, false);
SELECT setval(pg_get_serial_sequence('collections', 'collection_id'), 1, false);

delete from collections;
delete from tracks ;
delete from albums_executors ;
delete from genres ;
delete from genres_executors ;
delete from collections_tracks;
delete from executors;
delete from albums 