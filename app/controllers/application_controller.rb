class ApplicationController < ActionController::Base
  before_action :authenticate_user!, only: :show
  before_action :set_search

private

  def set_search
    @search_query = Search.new
  end
end
