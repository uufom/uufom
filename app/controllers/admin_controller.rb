class AdminController < ApplicationController
  before_filter :authenticate_user!

  def index
    @upcoming_services = UpcomingService.where("date >= ?", Date.today)
    @upcoming_service = UpcomingService.new
  end
end
