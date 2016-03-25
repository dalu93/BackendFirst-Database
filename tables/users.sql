CREATE TABLE users (

	id serial primary key,
	email text UNIQUE,
	password TEXT NOT NULL
);

CREATE TABLE emails (

	id serial primary key,
	email text
);

create unique index on emails ((lower (email)));