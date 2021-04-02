class SearchesController < ApplicationController
  def index
    @search = Search.new
    @searches = Search.all
  end

  def create
    @search = Search.new(search_params)

    Newspaper.all.each do |newspaper|
      newspaper.get_articles(@search)
    end
    if @search.save
      redirect_to @search
    else
      render :index
    end
  end

  def show
    @search = Search.find(params[:id])
  end

  private

  def search_params
    params.require(:search).permit(:query)
  end
end
