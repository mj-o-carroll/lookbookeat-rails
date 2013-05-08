class AddAddressColumnToMaps < ActiveRecord::Migration
  def change
    add_column :maps, :address, :string
  end
end
