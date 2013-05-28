class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter 'setup_menu'

  def setup_menu
    @allsections = Section.all
  end



end
