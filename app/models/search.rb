class Search < ApplicationRecord
  has_many :articles, dependent: :destroy
  validates :query, presence: true

  def image
    @articles = Article.all
    @articles.sample.image
  end
end
