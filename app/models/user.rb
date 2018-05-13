class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  #avatar related
  # validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  has_many :room_users
  has_many :rooms, through: :room_users
  has_many :messages
end
