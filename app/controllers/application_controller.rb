class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_search

  def after_sign_in_path_for(user)
    searches_path
  end

private

  def set_search
    @search_query = Search.new
  end
end
