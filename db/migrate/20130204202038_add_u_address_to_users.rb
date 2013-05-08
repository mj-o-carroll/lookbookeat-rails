class AddUAddressToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :u_address, :string
  end
end
