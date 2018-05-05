class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :user

  scope :sift, lambda{(order("created_at DESC LIMIT 50")).reverse } #that was all me applied learning 
end
