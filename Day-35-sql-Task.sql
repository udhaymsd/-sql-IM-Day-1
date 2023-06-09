-- create database imdb
-- use imdb
-- 1. Movie should have multiple media(Video or Image) 
-- create table Movie(
-- id int auto_increment,
-- Movie_name varchar(255) not null,
-- date_published varchar(255) not null,
-- duration varchar(255) not null,
-- Director varchar(255) not null,
-- Stars varchar(500) not null,
-- img_id int not null,
-- img_url varchar(500) not null,
-- createdAt timestamp default current_timestamp,
-- updatedAt timestamp on update current_timestamp,
-- primary key(id)
-- )

 -- insert into Movie(Movie_name,date_published,duration,Director,Stars,img_url,img_id)
--  values('Thunivu','14-01-2023','2hrs 33min','H.vionth','Ajith kumar,john kokken,maju warrier','https://th.bing.com/th/id/OIP.o4Dcc66AW0VkM_c6Hdb4FgHaLH?w=115&h=180&c=7&r=0&o=5&dpr=1.1&pid=1.7',1),
--  ('Varisu','14-01-2023','2hrs 43min','Vamshi paidipally','Vijay,shaam,praksh raj,rasmika mandanna','https://th.bing.com/th/id/OIP.GEZFSvfLMFf2KKvXRm5etQHaEK?w=323&h=180&c=7&r=0&o=5&dpr=1.1&pid=1.7',2)
--  
--  select * from Movie

-- 2. Movie can belongs to multiple Genre

-- create table Genre(
-- id int not null auto_increment,
-- Genre_id int,
-- Genre varchar(255),
-- primary key(id),
-- foreign key(Genre_id) references Movie(id)
-- )

-- insert into Genre(Genre_id,Genre) values(1,'Action, Adventure, Thriller'),
-- (2,'Action, Drama')
-- select * from Genre


-- 3. Movie can have multiple reviews and Review can belongs to a user
-- create table Reviews(
-- id int not null auto_increment,
-- user_id int,
-- user_name varchar(255) not null,
-- rating int not null,
-- primary key(id),
-- foreign key(user_id) references Movie(id)
-- )
-- insert into Reviews(user_id,user_name,rating) values(1,'selva',7),
-- (2,'siva',8);
-- select * from Reviews


-- 4. Artist can have multiple skills

-- create table Skills(
-- id int not null auto_increment,
-- Artist_name varchar(255),
-- Artist_id int,
-- Skills varchar(255),
-- primary key(id),
-- foreign key(Artist_id) references Movie(id)
-- )

-- insert into Skills(Artist_name,Artist_id,Skills) values('kamal hassan',1,'Actor,Director,producer'),
-- ('sivakarthikeyan',2,'Actor,Producer,lyrist')

-- select * from Skills


--  5. Artist can perform multiple role in a single film

-- create table Role(
-- id int not null auto_increment,
-- Artist_id int,
-- Artist_name varchar(255),
-- movie_name varchar(255),
-- Artist_role varchar(255),
-- primary key(id),
-- foreign key(Artist_id) references Movie(id)
-- )


--  insert into Role(Artist_id,Artist_name,movie_name,Artist_role) 
--  values(1,'sivakarthikeyan','kana','Actor,producer,lyrist writer')
--  ,(2,'kamal hassan','vishvarubam','Actor,producer,story writer')

-- select * from Role