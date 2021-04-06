class Search < ApplicationRecord
  has_many :articles, dependent: :destroy
  validates :query, presence: true

  def image
   # @articles_all = Article.all
   # @articles = []

   # @articles_all.each do |article|
   #   next if @articles.find {|a| a.image == article.image} || article.image == "https://i.dailymail.co.uk/i/pix/m_logo_636x382px.png" || article.image == "https://ichef.bbci.co.uk/images/ic/400xn/p01tlf61.jpg" || article.image == "https://gocycle.com/wp-content/uploads/2019/02/theguardian.jpg"
   #   @articles << article
  #  end
  #  @articles.sample.image
    article_images = []
    Article.all.each do|a|
      article_images << a.image
    end
    article_images.uniq!

    article_images
  end
end
