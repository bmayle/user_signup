require "minitest/autorun"
require_relative "user_signup.rb"
class TestUserSignUp < Minitest::Test

	def test_assert_1_is_1
		assert_equal(1, 1)
	end

	# def test_assert_that_username_are_strings
	# 	username = "bmayle"
	# 	assert_equal(String, set_up_username(username))
	# end

	# def test_assert_that_integers_are_still_strings
	# 	username = 1152
	# 	assert_equal(String, set_up_username(username))
	# end

	def test_assert_that_5_char_username_is_invalid
		username = 12345
		assert_equal("Invalid", set_up_username(username))
	end	

	def test_assert_that_6_char_username_is_valid
		username = "bm4yle"
		assert_equal("Valid", set_up_username(username))
	end	

	# # def test_assert_that_email_is_a_string
	# # 	email = "bmayle17@gmail.com"
	# # 	assert_equal(String, set_up_email(email))
	# end	

	def test_assert_that_email_is_invalid
		email = "bmayle17@gmail.com"
		verify_email = "bmayle17@outlook.com"
		assert_equal("Invalid", set_up_email(email, verify_email))
	end


	def test_assert_that_email_is_valid
		email = "bmayle17@gmail.com"
		verify_email = "bmayle17@gmail.com"
		assert_equal("Valid", set_up_email(email, verify_email))
	end

	# def test_assert_that_password_is_string
	# 	password = "p4ssword"
	# 	assert_equal(String, set_up_password(password))
	# end

	def test_assert_that_7_char_password_is_invalid
		password = "bem1234"
		assert_equal("Invalid", set_up_password(password))
	end

	def test_assert_that_8_char_password_is_valid
		password = "bmayle17"
		assert_equal("Valid", set_up_password(password))
	end

	def test_assert_that_a_password_that_does_not_contain_uppercase_letter_is_invalid
		password = "password"
		assert_equal("Invalid", password_has_uppercase(password))
	end

	def test_assert_that_a_password_that_contains_a_uppercase_letter_is_valid
		password = "Password"
		assert_equal("Valid", password_has_uppercase(password))
	end

	def test_assert_that_a_password_that_does_not_contain_lowcase_letter_is_invalid
		password = "ROGERTHAT"
		assert_equal("Invalid", password_has_lowercase(password))
	end
	
	def test_assert_that_a_password_that_contains_a_lowercase_letter_is_valid
		password = "slingshot"
		assert_equal("Valid", password_has_lowercase(password))
	end

	def test_assert_that_a_password_that_does_not_contain_number_is_invalid
		password = "IAMnumONE"
		assert_equal("Invalid", password_has_number(password))
	end

	def test_assert_that_a_password_that_contains_a_number_is_valid
		password = "P4ssword"
		assert_equal("Valid", password_has_number(password))
	end

	def test_assert_that_a_password_that_does_not_contain_any_spec_char_is_invalid
		password = "turkey4211"
		assert_equal("Invalid", password_has_special_char(password))
	end


end
