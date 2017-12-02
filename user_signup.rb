def set_up_username(username)
	username = username.to_s
	username.class

	if username.length > 5
		"Valid"
	else
		"Invalid"
	end	
end

def set_up_email(email)
	email = email.to_s
	email.class
	userName = userName.to_s
	userName.class

	if email == [userName.to_s + "@gmail.com", userName.to_s + "@yahoo.com", userName.to_s + "@aol.com", userName.to_s + "@hotmail.com", userName.to_s + "@outlook.com", userName.to_s + "@yandex.com", userName.to_s + "@protonmail.com", userName.to_s + "@zoho.com", userName.to_s + "@mail.com", userName.to_s + "@tutamail.com"]
		"Valid"
	else
		"Invalid"
	end	
end
