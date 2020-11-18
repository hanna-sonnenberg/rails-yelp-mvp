class FixAddressTypoInRestaurants < ActiveRecord::Migration[6.0]
  def change
    remove_column :restaurants, :adress, :string
    add_column :restaurants, :address, :string
  end
end
