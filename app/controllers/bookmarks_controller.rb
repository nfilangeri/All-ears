class BookmarksController < ApplicationController
  def create
    @bookmark = Bookmark.new
    @article = Article.find(params[:article_id])
    @bookmark.user = current_user
    @bookmark.article = @article
    @bookmark.save
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
  end

  private


end
