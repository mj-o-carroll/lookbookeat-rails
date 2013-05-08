class AddUsernameToRestaurant < ActiveRecord::Migration
  def change
  	add_column :restaurants, :username, :string
  end
end
