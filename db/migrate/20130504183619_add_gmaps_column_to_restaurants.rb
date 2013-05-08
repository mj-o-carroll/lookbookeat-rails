class AddGmapsColumnToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :gmaps, :boolean
  end
end
