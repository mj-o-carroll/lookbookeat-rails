class AddLongitudeColumnToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :longitude, :float
  end
end
