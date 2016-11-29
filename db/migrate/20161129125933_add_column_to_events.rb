class AddColumnToEvents < ActiveRecord::Migration
  def change
    add_column :events, :avatar, :string
  end
end
