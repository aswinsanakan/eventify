class RenameColumnInEvents < ActiveRecord::Migration
  def change
  	rename_column :events, :tickets, :tickets_left
  end
end
