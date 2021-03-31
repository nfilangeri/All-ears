class CommentsController < ApplicationController
    before_action :set_comments, only: [:update, :destroy]

    def create
        @comment = Comment.new(params_comment)
        @article = Article.find(params[:article_id])
        @comment.article = @article
        @comment.user = current_user
        if @comment.save
            redirect_to article_path(@article, anchor: "comment-#{@comment.id}")
        end
    end

    def update
        authorize @comment
        article = @comment.article
        @comment.update(params_comment)
        if @comment.save
            redirect_to article_path(article)
        end
    end

    def destroy
      authorize @comment
      article = @comment.article
      @comment.destroy
      redirect_to article_path(article)
    end

    private

    def params_comment
        params.require(:comment).permit(:content, :user, :article)
    end
    def set_comments
        @comment = Comment.find(params[:id])
    end
end
