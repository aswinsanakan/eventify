class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.integer :venue_id
      t.integer :city_id
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.float :entry_fee
      t.string :status
      t.integer :locality_id

      t.timestamps null: false
    end
  end
end
