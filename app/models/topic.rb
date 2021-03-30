class Topic < ApplicationRecord
  belongs_to :user
  has_many :messages
  has_one_attached :photo
end
