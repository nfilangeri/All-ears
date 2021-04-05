class RatingsController < ApplicationController
  def update
    @rating = Rating.find(params[:id])
    if @rating.save
      redirect_to articles_path(article)
    end
  end

  def create

    @article = Article.find(params[:article_id])
    @rating = Rating.new(params_rating)
    @rating.user = current_user
    @rating.article = @article
    @rating.save
  end

  private

  def params_rating
    params.require(:rating).permit(:article, :rating)
  end
end
