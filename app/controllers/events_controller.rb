class EventsController < ApplicationController
  before_filter :authenticate_user!

  def create
    @event = Event.new(params[:event])
    @event.save!

    redirect_to :back
  end

  def update
    @event = Event.find(params[:id])
    @event.update_attributes(params[:event])
    redirect_to :back
  end

  def destroy
    Event.destroy(params[:id])
    redirect_to :back
  end
end
