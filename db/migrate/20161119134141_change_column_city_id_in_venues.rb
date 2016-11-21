class ChangeColumnCityIdInVenues < ActiveRecord::Migration
  def change
  	remove_column :venues, :city_id
  	add_column :venues, :locality_id, :integer
  end
end
