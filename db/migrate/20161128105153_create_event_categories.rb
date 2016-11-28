class CreateEventCategories < ActiveRecord::Migration
  def change
    create_table :event_categories do |t|
      t.integer :event_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
