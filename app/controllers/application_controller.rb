class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter 'setup_menu'

def after_sign_in_path_for(resource)
  return request.env['omniauth.origin'] || stored_location_for(resource) || root_path
end

def index
    if user_signed_in?
      redirect_to :controller=>'dashboard', :action => 'index'
    end
  end

  def setup_menu
    @allsections = Section.all
  end



end
