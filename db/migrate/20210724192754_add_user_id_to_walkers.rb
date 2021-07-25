class AddUserIdToWalkers < ActiveRecord::Migration[5.2]
  def change
    add_column :walkers, :user_id, :integer
  end
end
