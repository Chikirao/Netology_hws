create table genres (
	genre_id SERIAL primary key,
	name VARCHAR(100) not NULL
);

create table executors (
	executor_id SERIAL primary key,
	name VARCHAR(50) not NULL
);

create table albums (
	album_id SERIAL primary key,
	name VARCHAR(50) not null,
	year smallint(4) not null
);

create table collections (
	collection_id SERIAL primary key,
	name VARCHAR(50) not null,
	year smallint not null
);

create table genres_executors (
	genre_id integer references genres(genre_id),
	executor_id integer references executors(executor_id)
);

create table albums_executors (
	executor_id integer references executors(executor_id),
	album_id integer references albums(album_id)
);

create table tracks (
	executor_id integer references executors(executor_id),
	album_id integer references albums(album_id)
);

create table collections_tracks (
	track_id SERIAL primary key,
	name varchar(50) not null,
	lenght interval,
	album_id integer references albums(album_id)
);

create table collections_tracks (
	collection_id integer references collections(collection_id),
	track_id integer references tracks(track_id)
);