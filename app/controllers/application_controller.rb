class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_search
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(user)
    searches_path
  end

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :username, :bio, :birthdate])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:photo, :first_name, :last_name, :bio, :birthdate])
  end

private

  def set_search
    @search_query = Search.new
  end
end
