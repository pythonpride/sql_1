create table if not exists Genre (
  Id serial primary key, 
  Name varchar(40) not null unique);

create table if not exists Performers (
  Id serial primary key, 
  Nickname varchar(40) not null);

create table if not exists Genre_Performers (
  Genre_id integer not null references Genre(Id), 
  Performers_id integer not null references Performers(Id), 
  constraint pk1 primary key (Genre_id, Performers_id));

create table if not exists Albums (
  Id serial primary key, 
  Name varchar(100) not null, 
  Release integer not null);

create table if not exists Performers_Albums (
  Performers_id integer not null references Performers(Id), 
  Albums_id integer not null  references Albums(Id), 
  constraint pk2 primary key (Performers_id, Albums_id));

create table if not exists Tracks (
  Id serial primary key, Name varchar(100) not null, 
  Duration integer not null, 
  Albums_id integer references Albums(Id));

create table if not exists Compilation (
  Id serial primary key, 
  Name varchar(100) not null, 
  Release integer not null);

create table if not exists Compilation_Tracks (
  Compilation_id integer not null references  Compilation(Id), 
  Tracks_id integer not null  references Tracks(Id), 
  constraint pk3 primary key (Compilation_id,Tracks_id));
