class ChangeUpcomingServices < ActiveRecord::Migration
  def change
    add_column :upcoming_services, :title, :string
  end
end
