require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "welcome user" do
    user = User.find_by_email("erezfree@gmail.com")

    email =  WelcomeMailer.welcome_send(user)

    assert_equal [user.email], email.to
  end
end

