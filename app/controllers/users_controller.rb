class UsersController < ApplicationController

def new

 @user = User.new()

end





def edit

end


def update
  @user = current_user
  @stored_token = @user.confirm_token
  @user_token_hash = params[:user]
  @user_token = @user_token_hash[:confirm_token]
  if @stored_token == @user_token

    @user.email_confirmed = true
    @user.save(:validate => false)

  else

    flash.now[:alert] = "token entered incrrectly"

    render:edit

end
end
private

def user_params

   params.require(:user).permit(:confirm_token)


end

end
