class SearchesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index]


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
    if @search.valid?
      all_articles = Newspaper.all.map do |newspaper|
      newspaper.get_articles(@search)
       end
        if all_articles != [nil, nil, nil, nil, nil, nil]
          @search.save
          redirect_to search_path(@search)
        else
        redirect_to(searches_path, alert: "Please check for any possible typos")
        end
    else
      redirect_to(searches_path, alert: "You must input something to search!")
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
