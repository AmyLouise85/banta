class MessagesController < ApplicationController

  def create
    @room = Room.find(params[:room_id])
    #@user = current_user
    #@message = Message.new(message_params)    
    #@message.user = current_user
    @message = current_user.messages.new(message_params)
    @message.room = @room
    @messages = Message.all    
    if @message.save
      redirect_to room_path(@room)
    else 
      render 'rooms/show'
    end
  end


  private

  def message_params
    params.require(:message).permit(:body)
  end

end
