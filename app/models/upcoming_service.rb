class UpcomingService < ActiveRecord::Base
  default_scope order("date ASC")

  def self.next
    UpcomingService.where("date >= ?", Date.today).first
  end
end
