class User < ApplicationRecord
  has_many :messages
  has_many :comments
  has_many :topics
  has_many :ratings
  has_one_attached :photo
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
end
