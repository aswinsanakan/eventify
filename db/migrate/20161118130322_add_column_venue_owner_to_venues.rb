class AddColumnVenueOwnerToVenues < ActiveRecord::Migration
  def change
  	add_column :venues, :user_id, :integer
  end
end
