class AddColumnToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :seats, :integer
  end
end
