class CalendarsController < ApplicationController
  before_filter :authenticate_user!, :only => [:create]

  def index
    @calendar = Calendar.first
  end

  def create
    return if params[:calendar].blank?

    @calendar = Calendar.new(params[:calendar])
    @calendar.save!

    Calendar.where("id <> ?", @calendar.id).each(&:destroy)
    redirect_to :back
  end

  def update
    @calendar = Calendar.find(params[:id])
    @calendar.update_attributes(params[:calendar])
    redirect_to :back
  end
end
