class MessagesController < ApplicationController
    def new
   @message = Message.new()
   @first_value = params[:parent_id]
   @receving_parent = Parent.find(@first_value)
   session[:passed_variable] = @first_value
  end

  def create
   @first_value = session[:passed_variable]
   @receving_parent_id = @first_value
   @message = Message.new(message_params)
   @message.receving_parent_id = @receving_parent_id
   @parents = Parent.all
   @parents.each do |p|
    if p.user_id == current_user.id
      @message.sending_parent_id = p.id

    end
   end

    if @message.save

    redirect_to parents_path(@parent)

  else

     render :new

  end

  end

   def inbox
   @parent = Parent.find(params[:id])

   end

 private

def message_params


  params.require(:message).permit(:content)

 end


end
