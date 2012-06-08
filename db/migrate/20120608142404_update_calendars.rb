class UpdateCalendars < ActiveRecord::Migration
  def up
    change_column :calendars, :data, :text
  end

  def down
    change_column :calendars, :data, :string
  end
end
