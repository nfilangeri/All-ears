class Search < ApplicationRecord
  has_many :articles

  def image
    articles.sample.image
  end
end
