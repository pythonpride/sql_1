create table if not exists Worker (
  Id serial primary key, 
  Name varchar(100) not null, 
  Departament integer not null, 
  Boss_id integer not null references Worker(Id));
