class Article < ApplicationRecord
  belongs_to :newspaper
  has_many :comments, dependent: :destroy
  has_many :ratings, dependent: :destroy
  belongs_to :search
  has_many :bookmarks, dependent: :destroy


  include PgSearch::Model
  pg_search_scope :search_full_text, against: {
    title: 'A',
    description: 'B',
    content: 'C'
  }

  def get_thumbnail
    Faraday.head(image).status == 200 ? image : "https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/BBC_News_2019.svg/1200px-BBC_News_2019.svg.png"
  end

  def avg_rating
    if ratings.present?
      ratings.map(&:rating).sum/ratings.count
    else
      return 50
    end
  end
end
