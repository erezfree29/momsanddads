class MessagesController < ApplicationController
    def new

   @message = Message.new()
   raise
   @first_value = params[:parent_id]
   @receving_parent = Parent.find(@first_value)
   session[:passed_variable] = @first_value
  end

  def create

   @message = Message.new(message_params)
   @first_value = session[:passed_variable]
   @receving_parent_id = @first_value
   @receving_parent = Parent.find(@receving_parent_id)
   @message = Message.new(message_params)
   @message.receving_parent_id = @receving_parent_id
   @message.date = Date.today
   @message.time = Time.now.strftime("%H:%M:%S")
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

  def index
 @parents = Parent.all
 @parents.each do |p|
  if p.user_id == current_user.id
    @parent_id = p.id
  end
 end
 @parents = Parent.all
 @all_messages = Message.all
 @parent_messages = []
 @parent_sent_messages = []
  @all_messages.each do |m|
  if m.receving_parent_id == @parent_id
   @parent_messages << m
  elsif m.sending_parent_id ==@parent_id
     @parent_sent_messages << m

  end
 end
end
def show
  @message = Message.find(params[:id])
end


 private

def message_params


  params.require(:message).permit(:content)

 end


end


























