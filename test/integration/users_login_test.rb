require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest

  test  "login with invalid information"
    get new_session_path
    assert_template 'sessions/new'
    post new_session_path, session: { email: "", password: "" }
    assert_template 'sessions/new'
    assert_not flash.empty?
    get root_path
    assert flash.empty?
  end

end
