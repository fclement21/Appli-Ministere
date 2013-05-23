class SectionsController < InheritedResources::Base
  before_filter :setup_menu


  def index
    if user_signed_in?
      redirect_to :controller=>'dashboard', :action => 'index'
    end
  end

  def setup_menu
    @allsections = Section.all
end
end
