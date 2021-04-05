class Search < ApplicationRecord
  has_many :articles, dependent: :destroy

  def image
    @articles = Article.all
    @articles.sample.image
  end
end
