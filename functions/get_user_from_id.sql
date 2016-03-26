CREATE OR REPLACE FUNCTION get_user_from_id(

	_id NUMERIC
) RETURNS SETOF users AS $$

	SELECT *
	FROM users u
	WHERE u.id = _id;

$$ LANGUAGE SQL;