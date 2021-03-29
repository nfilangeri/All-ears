class CommentsController < ApplicationController
    before_action :set_comments, only: [:create, :update, :destroy]

    def create
        @comment.article = Article.find(params[:article_id])
        @comment.user = current_user
        @comment = Comment.new(params_comment)
    end

    def update
        @comment.update(params_comment)
        if @comment.save
            redirect_to article_path
        end
    end

    def destroy
        @comment.destroy
        redirect_to article_path
    end

    private

    def params_comment
        params.require(:comment).permit(:content, :user, :article)
    end
    def set_comments
        @comment = Comment.find(params[:id])
    end
end
