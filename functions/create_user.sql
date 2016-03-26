CREATE OR REPLACE FUNCTION create_user(

	_email	TEXT,
	_password TEXT
	
) RETURNS SETOF users AS $$

	INSERT INTO users (
		email, 
		password
	) 
	VALUES (
		lower(_email), 
		_password
	);

	SELECT * FROM users u 
	WHERE lower(u.email) = lower(_email);

$$ LANGUAGE SQL; 