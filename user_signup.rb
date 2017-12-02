def set_up_username(username)
	username = username.to_s
	username.class

	if username.length > 5
		"Valid"
	else
		"Invalid"
	end	
end

def set_up_email(email,verify_email)
	email = email.to_s
	email.class

	if email == verify_email
		"Valid"
	else
		"Invalid"
	end	
end

def set_up_password(password)
	password = password.to_s
	password.class

	if password.length > 7
		"Valid"
	else
		"Invalid"
	end	
end

