require "minitest/autorun"
require_relative "user_signup.rb"
class TestTicketRaffle < Minitest::Test

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

		def test_assert_that_password_contains_uppercase_letter
			password = "password"
			assert_equal("Invalid", password_has_uppercase(password))
		end

	end
