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

end