class Event < ActiveRecord::Base
  default_scope order("date ASC")

  def self.upcoming
    where("date >= ?", Date.today)
  end
end
