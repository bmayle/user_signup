require "minitest/autorun"
require_relative "user_signup.rb"
class TestTicketRaffle < Minitest::Test

	def test_assert_1_is_1
		assert_equal(1, 1)
	end

	def test_assert_that_username_are_strings
		username = bmayle
		assert_equal(String, set_up_username(username))
	end
end