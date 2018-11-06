class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def welcome_email
    @user = current_user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end







 # def welcome_email
 #    @user = "erezfree30@gmail.com"
 #    @url  = 'http://example.com/login'
 #    mail(to: @user, subject: 'Welcome to My Awesome Site' , body: 'something')
 #  end





