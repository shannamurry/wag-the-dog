class CreateWalkers < ActiveRecord::Migration[5.2]
  def change
    create_table :walkers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :city
      t.text :details

      t.timestamps
    end
  end
end
