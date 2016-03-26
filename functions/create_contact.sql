CREATE OR REPLACE FUNCTION create_contact(

	_user_id NUMERIC,
	_first_name VARCHAR(256),
	_last_name VARCHAR(256),
	_phone VARCHAR(32)
) RETURNS SETOF contacts AS $$

	INSERT INTO contacts (
		first_name,
		last_name,
		phone,
		user_id
	) VALUES (
		_first_name,
		_last_name,
		_phone,
		_user_id
	);
	
	SELECT *
	FROM contacts c
	WHERE c.phone = _phone;

$$ LANGUAGE SQL;