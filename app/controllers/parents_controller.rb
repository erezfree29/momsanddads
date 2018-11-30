class ParentsController < ApplicationController

skip_before_action :authenticate_user!
 def index

  @country = Countrie.all
  @countrynames = []
  @country.each do |c|

   @countrynames << c.name

  end

  if params[:town].present?



      params[:town].downcase!
      @parents = Parent.where(town: params[:town],age: params[:age],countryname: params[:country],sorientation: params[:orientation])
    else
  @parents = Parent.all
  end
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
    @parent.address = @parent.countryname + " " + @parent.town + " " + @parent.neighborhood
   end
  if @parent.save

    redirect_to parents_path(@parent)

  else

     render :new

  end

end

def show

    @parent = Parent.find(params[:id])

end

def destroy
  @parent = Parent.find(params[:id])
  @parent.destroy


end

private

def parent_params


  params.require(:parent).permit(:name, :sorientation, :photo, :countryname,:town, :neighborhood, :age, :intrested, :about, :partner, :longitude, :latitude, :address, :partner_photo)

 end

end

# //




