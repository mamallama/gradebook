require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "validity" do
    @user = User.new(name: "User1", email: "ladida@fake.com")
    assert @user = valid?
  end

  test "name should be present" do
    @user = User.new(name: "User1", email: "ladida@fake.com")
    @user.name = "    "
    assert_not @user.valid?
  end

  test "email should be present" do
    @user = User.new(name: "User1", email: "ladida@fake.com")
    @user.name = "    "
    assert_not @user.valid?
  end

  test "email addresses should be unique" do
    @user = User.new(name: "User1", email: "ladida@fake.com")
    duplicate_user = @user.dup
    @user.save
    assert_not duplicate_user.valid?
  end

  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end

  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end
end
