class BanterChannel < ApplicationCable::Channel
  
  def subscribed
    #this is a key, it will only stream to rooms matching this key
    current_user.rooms.each do |room|
      stream_from "rooms: #{room.id}"
    end
  end

  def unsubscribed
    stop_all_streams
  end
end
