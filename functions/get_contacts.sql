CREATE OR REPLACE FUNCTION get_contacts(

	_user_id NUMERIC
) RETURNS SETOF contacts AS $$
	
	SELECT *
	FROM contacts c
	WHERE c.user_id = _user_id;

$$ LANGUAGE SQL;