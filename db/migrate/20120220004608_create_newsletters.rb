class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :filename, null: false
      t.string :content_type, null: false
      t.binary :data, null: false

      t.timestamps
    end
  end
end
