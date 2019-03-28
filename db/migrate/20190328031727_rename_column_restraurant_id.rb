class RenameColumnRestraurantId < ActiveRecord::Migration[5.2]
  def change
    rename_column :reviews, :restraurant_id, :restaurant_id
  end
end