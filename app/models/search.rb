class Search < ApplicationRecord
  has_many :articles, dependent: :destroy
  validates :query, presence: true

  def image

    article_images = []
    Article.all.each do|a|
      article_images << a.image
    end
    article_images.uniq!

    article_images
  end
end
