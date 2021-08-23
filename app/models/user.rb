class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

validates :name, presence: true, length: { maximum: 6 }
validates :comment, {length: { maximum: 20} }
has_many :codes
has_many :comments
has_many :messages, dependent: :destroy
has_many :room_users
has_many :rooms, through: :room_users
end
