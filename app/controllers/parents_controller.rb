class ParentsController < ApplicationController


 def index

  @parents = Parent.all

 end

 def new
   if user_signed_in?
  @user = current_user
  @parent = Parent.new()
  @parent.user_id = @user.id
  end


 end


end
