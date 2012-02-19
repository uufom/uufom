class UpcomingService < ActiveRecord::Base
  default_scope order("date ASC")
  scope :next, where("date >= ?", Date.today).first
end
