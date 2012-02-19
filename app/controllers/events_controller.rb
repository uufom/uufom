class EventsController < ApplicationController
  before_filter :authenticate_user!
  after_filter :expire_public_index

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

  private

  def expire_public_index
    expire_action controller: :public, action: :index
  end
end
