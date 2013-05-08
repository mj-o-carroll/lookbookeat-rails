class RenameEmailToUEmail < ActiveRecord::Migration
  def up
  	rename_column :users, :email, :u_email
  end

  def down
  end
end
