class DashboardController < ApplicationController
    before_filter :authenticate_user!

  def index
  @sections = Section.find(params[:id])
  end

end
