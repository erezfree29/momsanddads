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
   @parent = Parent.new(parent_params)
   if user_signed_in?
    @user = current_user
    @parent.user_id = @user.id
   end
  if @parent.save
    redirect_to parents_path(@parent)

  else

     render :new

  end

end

private

def parent_params


  params.require(:parent).permit(:name, :sorientation, :photo, :countryname,:town, :neighborhood, :age, :intrested, :about, :partner)

 end

end

