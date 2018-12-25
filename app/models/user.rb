class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :welcome_send_email
def self.find_first_by_auth_conditions warden_conditions
    conditions = warden_conditions.dup
    if (email = conditions.delete(:email)).present?
      where(email: email.downcase).first
    elsif conditions.has_key?(:reset_password_token)
      where(reset_password_token: conditions[:reset_password_token]).first
    end
  end


  def  welcome_send_email
  WelcomeMailer.welcome_send(self).deliver

  end


 end
