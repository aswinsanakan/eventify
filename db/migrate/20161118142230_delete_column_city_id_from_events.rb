class DeleteColumnCityIdFromEvents < ActiveRecord::Migration
  def change
  	remove_column :events, :city_id
  end
end
