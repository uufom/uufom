class PublicController < ApplicationController
  def index
    @upcoming_service = UpcomingService.next
    @events = Event.upcoming
  end
end
