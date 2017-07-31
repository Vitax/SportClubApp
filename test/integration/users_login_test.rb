require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
	test "login with invalid information" do
		get login_path
		assert_template 'sessions/new'
		post login_path, params: { session: { email: "caglar.oezel@googlemail.com", password: "test123" } }
		assert_template 'sessions/new'
		assert_not flash.empty?
		get root_path
		assert flash.empty?
  	end	
end
