class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_room


  def create    
    message = @room.messages.new(message_params)
    message.user = current_user
    message.save
    MessageRelayJob.perform_later(message)
      # respond_to do |format|
      # if message.save
      #   format.html { redirect_to @room }
      #   format.json { render :show, status: :created }
      # else
      #   format.html { render 'rooms/show' }
      #   format.json { render json: @message.errors, status: :unprocessable_entity }
      # end
    # end
  end

  def destroy
    @room_user = @room.room_users.where(user_id: current_user.id).destroy_all
    redirect_to rooms_path
  end

  private

  def set_room
    @room = Room.find(params[:room_id])
  end

  def message_params
    params.require(:message).permit(:body)
  end
end