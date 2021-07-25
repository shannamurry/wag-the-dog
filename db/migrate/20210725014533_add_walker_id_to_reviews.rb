class AddWalkerIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :walker_id, :integer
  end
end
