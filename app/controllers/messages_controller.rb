class MessagesController < ApplicationController

  def create
    @room = Room.find(params[:room_id])
    @message = current_user.messages.new(body: params[:body], room: @room)
    #@messages = Message.all  
    respond_to do |format|
      if @message.save
        format.html { redirect_to @room }
        format.json { render :show, status: :created }
      else
        format.html { render 'rooms/show' }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

end