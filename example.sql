drop table sessions;
drop table users;
drop table todos;

create table users (
  id          serial primary key,
  uuid        varchar(64) not null unique,
  name        varchar(255),
  email       varchar(255) not null unique,
  password    varchar(255) not null,
  created_at  timestamp not null
);

create table sessions(
  id          serial primary key,
  uuid        varchar(64) not null unique,
  name        varchar(255),
  email       varchar(255) not null unique,
  user_id     integer references users(id)
  created_at  timestamp not null
);

create table not todos (
  id          serial primary key,
  uuid        varchar(64) not null unique,
  content     text,
  email       varchar(255) not null unique,
  user_id     integer references users(id)
  created_at  timestamp not null
);