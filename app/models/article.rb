class Article < ApplicationRecord
  belongs_to :newspaper
  has_many :comments, dependent: :destroy
  has_many :ratings, dependent: :destroy
end
