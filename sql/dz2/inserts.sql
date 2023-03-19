insert into executors (name)
values
('Michael Jackson'),
('Viktor Tsoy'),
('Ivan Ivanov'),
('MC rap killer'),
('Sirotkin'),
('SLAVA MARLOW'),
('Bethowen'),
('The Beatles');

insert into genres (name)
values
('classical'),
('pop'),
('hip-hop'),
('retro-wave'),
('ultra underground rap');

insert into albums (name, year)
values
('legendary songs', 1976),
('KINO', 1993),
('Super Hits', 2077),
('sounds of nature', 2007),
('forever', 2018),
('Artem', 2021),
('XVI rap', 1567),
('Revolver', 1969);

insert into tracks (name, lenght, album_id)
values
('SymphonyNo.777', '3m12s', 7),
('Molchat Doma', '2m42s', 2),
('Bohemian Rhapsody', '6m07s', 6),
('Stairway to Heaven', '8m02s', 8),
('Hotel California', '6m30s', 1),
('Imagine', '3m06s', 1),
('Smells Like Teen Spirit', '5m01s', 3),
('Comfortably Numb', '6m24s', 4),
('Billie Jean', '4m54s', 5),
('Like my Rolling Stone', '6m13s', 4),
('Purple Haze', '3m02s', 8),
('Hey Jude', '7m11s', 7),
('The Times They Are A-Changin', '3m16s', 4),
('Boys Don’t Cry', '2m37s', 3),
('Yesterday', '2m04s', 1),
('I Want to Hold Your Hand', '2m26s', 2),
('Satisfaction', '3m44s', 1),
('Dancing Queen', '3m51s', 3);

INSERT INTO collections (name, year)
VALUES
('90s songs', 2000),
('Greatest Hits', 1995),
('Classic Rock', 1980),
('Top 40', 2022),
('Hip-Hop Essentials', 2019),
('Chillout Lounge', 2005),
('Indie Anthems', 2015),
('Country Classics', 1970);
  
insert into albums_executors
values
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8);

insert into collections_tracks 
values
(1,1),
(4,2),
(8,3),
(2,4),
(6,5),
(3,6),
(7,7),
(5,8),
(4,9),
(1,10),
(8,11),
(5,12),
(2,13),
(6,14),
(4,15),
(3,16),
(2,17),
(6,18);

insert into genres_executors
values
(2,1),
(5,7),
(3,2),
(4,3),
(1,4),
(2,5),
(5,6),
(4,8);