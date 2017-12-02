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





