class WelcomeMailer < ApplicationMailer

 def welcome_send(user)
 @user = user
 mail to: user.email, subject:"welcome to MomdAndDads",from:"info@momsandads.com"

 end

end
