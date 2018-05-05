class ChatroomsChannel < ApplicationCable::Channel
  
  def subscribed
    current_user.chatrooms.each do |chatroom|
     stream_from "chatrooms: #{chatroom.id}"
    end
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    stop_all_streams
  end
end
