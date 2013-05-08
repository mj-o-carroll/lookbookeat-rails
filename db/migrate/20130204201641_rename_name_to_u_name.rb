class RenameNameToUName < ActiveRecord::Migration
  def up
  	rename_column :users, :name, :u_name
  end

  def down
  end
end
