CREATE OR REPLACE FUNCTION get_user_from_email(

	_email TEXT
) RETURNS SETOF users AS $$
	
	SELECT *
	FROM users u
	WHERE u.email = _email;

$$ LANGUAGE SQL;