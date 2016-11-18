class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.integer :city_id
      t.text :address

      t.timestamps null: false
    end
  end
end
