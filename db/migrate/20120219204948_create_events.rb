class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date, null: false
      t.string :time, null: false
      t.string :name, null: false
      t.text :description

      t.timestamps
    end
  end
end
