class AddPasswordToRestaurant < ActiveRecord::Migration
  def change
  	add_column :restaurants, :password, :string
  end
end
