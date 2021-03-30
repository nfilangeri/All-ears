class RatingsController < ApplicationController
    def update
        @rating = Rating.find(params[:id])
        if @rating.save
            redirect_to articles_path(article)
        end

    end

    def create
        @article = Article.find(params[:id])
        @rating = Rating.new(params_rating)
        @rating.article = @article
        @rating.user = current_user
        if @rating.save
            redirect_to articles_path(article)
        end
    end

    private 

    def params_rating
        params.require(:comment).permit(:article, :user, :rating)
    end

end
