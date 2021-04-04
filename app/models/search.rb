class Search < ApplicationRecord
  has_many :articles, dependent: :destroy

  def image
    @articles = Article.all
    @articles.first.image
  end
end
