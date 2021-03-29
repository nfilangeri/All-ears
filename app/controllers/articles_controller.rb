class ArticlesController < ApplicationController
    before_action :set_articles, only: [:show, :create, :destroy]

    def index
        @articles = Article.all
    end

    def show
    end

    def create
        @article = Article.new(params_article)
        @newspaper = Newspaper.find(params(:newspaper_id))
        @article.newspaper = @newspaper
        if @article.save
            redirect_to @article
        end
    end

    def destroy
        @article.destroy
        redirect_to @index
    end

    private

    def params_article
        params.require(:article).permit(:content, :title, :writers_name, :publication_date, :newspaper)
    end

    def set_articles
        @article = Article.find(params[:id])
    end
end
