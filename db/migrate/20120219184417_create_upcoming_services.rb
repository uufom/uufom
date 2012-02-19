class CreateUpcomingServices < ActiveRecord::Migration
  def change
    create_table :upcoming_services do |t|
      t.date :date,         null: false
      t.text :description,  null: false

      t.timestamps
    end
    add_index :upcoming_services, %w(date), unique: true
  end
end
