def set_up_username(username)
	username = username.to_s
	username.class

	if username.length > 5
		"Valid"
	else
		"Invalid"
	end	
end