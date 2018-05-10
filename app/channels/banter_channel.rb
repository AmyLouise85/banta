class BanterChannel < ApplicationCable::Channel
  
  def subscribed
    #this is a key, it will only stream to rooms matching this key
    stream_from "banter_channel:#{params[:room]}"
  end

  def unsubscribed
    stop_all_streams
  end

  # def rant
  #   ActionCable.server.broadcast("banter_channel", :message => data['message'])
  # end

  private

  def render_message(message)
    ApplicationController.render(partial: 'messages/message',
                                 locals: { message: message })
  end

end
