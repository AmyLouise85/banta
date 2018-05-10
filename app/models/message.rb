class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user

  after_create :notify

  def notify
    #this is broadcasting message for the room that this message was posted in
    ActionCable.server.broadcast "banter_channel:#{room_id}", message: to_html
  end

  def to_html
    rendered = ApplicationController.render(
      :partial => 'messages/message',
      :layout => false,
      :locals => {message: self}
    )
  end

  def to_json
    JSON.generate({body: body, user: user.name, created_at: created_at})
  end


end
