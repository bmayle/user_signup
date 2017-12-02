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

def password_has_uppercase(password)
	password = password.to_s
	password.class
	caps = []
	uppercase = *('A'..'Z')
	uppercase.each do |cap_letter|
		if password.include?(cap_letter)
			caps = true
		end
	end
	if caps == true
		"Valid"
	else
		"Invalid"
	end
end

def password_has_lowercase(password)
	password = password.to_s
	password.class
	lower = []
	lowercase = *('a'..'z')
	lowercase.each do |lower_letter|
		if password.include?(lower_letter)
			lower = true
		end
	end
	if lower == true
		"Valid"
	else
		"Invalid"
	end
end

def password_has_number(password)
	password = password.to_s
	password.class
	digit = []
	numbers = *('0'..'9')
	numbers.each do |number|
		if password.include?(number)
			digit = true
		end
	end
	if digit == true
		"Valid"
	else
		"Invalid"
	end
end

def password_has_special_char(password)
	password = password.to_s
	password.class
	sp_char = []
	characters = ["!", "@", "#", "$", "%", "^", "&", "*", "<", ">", "?", "_", "-", "=", "+"]
	characters.each do |special_char|
		if password.include?(special_char)
			sp_char = true
		end
	end
	if sp_char == true
		"Valid"
	else
		"Invalid"
	end
end

def valid_password(password)
	contains_length_requirement = set_up_password(password)
	contains_caps = password_has_uppercase(password)
	contains_lower = password_has_lowercase(password)
	contains_number = password_has_number(password)
	contains_special_char = password_has_special_char(password)

	if contains_length_requirement == "Valid" &&
		contains_caps == "Valid" &&
		contains_lower == "Valid" &&
		contains_number == "Valid" &&
		contains_special_char == "Valid" 
			"Valid"
		else
			"Invalid"
	end
end

def password_is_valid(password, verify_password)
	if password == verify_password
		"Valid"
	else
		"Invalid"
	end
end



