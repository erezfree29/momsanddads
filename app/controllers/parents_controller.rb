class ParentsController < ApplicationController

skip_before_action :authenticate_user!
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

 def create
  @user = current_user
  @parent = Parent.new(parent_params)

  if @trainer.save
    redirect_to parent_path(@parent)

  else
     render :new

  end

end

def parent_params


  params.require(:parent).permit(:name, :sexual_orientation, :photo, :country,:town, :neighborhood)

 end

end
