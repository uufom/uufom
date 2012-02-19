class AdminController < ApplicationController
  before_filter :authenticate_user!

  def index
    @upcoming_service = UpcomingService.new
  end
end
