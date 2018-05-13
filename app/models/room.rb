class Room < ApplicationRecord
  has_many :room_users
  has_many :user, through: :room_users
  has_many :messages

  validates :name, presence: true
  scope :sorted, lambda {order("name ASC")}
end
