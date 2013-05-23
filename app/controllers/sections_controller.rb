class SectionsController < InheritedResources::Base
  before_filter :setup_menu

  def setup_menu
    @allsections = Section.all
end
end
