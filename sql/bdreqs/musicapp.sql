create table if not exists genres (
	genre_id SERIAL primary key,
	name VARCHAR(100) not NULL
);

create table if not exists executors (
	executor_id SERIAL primary key,
	name VARCHAR(50) not NULL
);

create table if not exists albums (
	album_id SERIAL primary key,
	name VARCHAR(50) not null,
	year smallint(4) not null
);

create table if not exists collections (
	collection_id SERIAL primary key,
	name VARCHAR(50) not null,
	year smallint not null
);

create table if not exists genres_executors (
	genre_id integer references genres(genre_id),
	executor_id integer references executors(executor_id)
);

create table if not exists albums_executors (
	executor_id integer references executors(executor_id),
	album_id integer references albums(album_id)
);

create table if not exists tracks (
	executor_id integer references executors(executor_id),
	album_id integer references albums(album_id)
);

create table if not exists collections_tracks (
	track_id SERIAL primary key,
	name varchar(50) not null,
	lenght interval,
	album_id integer references albums(album_id)
);

create table if not exists collections_tracks (
	collection_id integer references collections(collection_id),
	track_id integer references tracks(track_id)
);