class Article < ApplicationRecord
  belongs_to :newspaper
  has_many :comments, dependent: :destroy
  has_many :ratings, dependent: :destroy
  belongs_to :search

  include PgSearch::Model
  pg_search_scope :search_full_text, against: {
    title: 'A',
    description: 'B',
    content: 'C'
  }
end
