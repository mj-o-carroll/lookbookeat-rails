class RenameUserEmailToEmail < ActiveRecord::Migration
  def up
  	rename_column :users, :u_email, :email
  end

  def down
  end
end
