class UpcomingServicesController < ApplicationController
  before_filter :authenticate_user!
  after_filter :expire_public_index

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

  private

  def expire_public_index
    expire_action controller: :public, action: :index
  end
end
