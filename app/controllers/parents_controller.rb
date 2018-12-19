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

   if @parent.name == ""

    flash.now[:alert] = 'please enter your name-'

   end

   if @parent.town == ""

     if @parent.name == ""
      flash.now[:alert]  <<  'please enter city/town-'
     else
      flash.now[:alert] = 'please enter city/town-'

     end

   end
   if @parent.neighborhood == ""

       if @parent.name == "" || @parent.town == ""
       flash.now[:alert]  << 'please enter  a neighborhood-'
      else
       flash.now[:alert] = 'please enter a neighborhood-'
    end

   end

   if @parent.photo.length == 0

     if  @parent.name == "" ||  @parent.town == "" || @parent.neighborhood == ""
       flash.now[:alert]  << 'please upload a photo-'
     else

       flash.now[:alert]  = 'please upload  a photo-'
    end

   end

   if @parent.about == ""

    if @parent.name == "" || @parent.town == "" ||  @parent.neighborhood == "" || @parent.photo.length == 0

     flash.now[:alert]  << 'please tell us about yourself'

      else

      flash.now[:alert]  = 'please tell us about yourself'

     end

   end

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

def message

end

private

def parent_params


  params.require(:parent).permit(:name, :sorientation, :photo, :countryname,:town, :neighborhood, :age, :intrested, :about, :partner, :longitude, :latitude, :address, :partner_photo)

 end



end




