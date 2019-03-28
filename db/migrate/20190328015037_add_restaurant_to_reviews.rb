class AddRestaurantToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :restraurant_id, :integer
  end
end
