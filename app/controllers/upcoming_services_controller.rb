class UpcomingServicesController < ApplicationController
  before_filter :authenticate_user!
  def create
    @upcoming_service = UpcomingService.new(params[:upcoming_service])
    @upcoming_service.save!

    redirect_to :back
  end

  def update
    @upcoming_service = UpcomingService.find(params[:id])
    @upcoming_service.update_attributes(params[:upcoming_service])
    redirect_to :back
  end

  def destroy
    UpcomingService.destroy(params[:id])
    redirect_to :back
  end
end
