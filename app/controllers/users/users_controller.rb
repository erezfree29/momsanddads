class UsersController < ApplicationController


  def new

    @user = User.new()

  end

  def create
   @user = User.new(user_params)
   raise

   if @user.save
        RegistrationMailer.registration_confirmation(@user).deliver
        flash[:success] = "Please confirm your email address to continue"
        redirect_to root_url
      else
        flash[:error] = "Ooooppss, something went wrong!"
        render 'new'
      end


 end


private

def user_params


  params.require(:parent).permit(:email, :encrypted_password)

 end

end






