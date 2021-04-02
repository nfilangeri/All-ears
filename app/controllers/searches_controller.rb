class SearchesController < ApplicationController  
  def index
    @searches = Search.all
    @search = Search.new
    @all_searches = Search.all.order(created_at: :desc)
    @searches = []
    @all_searches.each do |search|
      next if @searches.find {|s| s.query == search.query}
      @searches << search
    end
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
