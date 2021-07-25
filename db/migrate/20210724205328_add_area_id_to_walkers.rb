class AddAreaIdToWalkers < ActiveRecord::Migration[5.2]
  def change
    add_column :walkers, :area_id, :integer
  end
end
