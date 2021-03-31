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
        @rating.article = @article
        @rating.user = current_user
        @rating.save
        #if @rating.save
           # redirect_to articles_path(@article)
        #else
          #redirect to articles_path(@article)
      # end
    end

    private

    def params_rating
        params.require(:rating).permit(:article, :user, :rating)
    end

end
