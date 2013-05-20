class RemoveContentFromMenus < ActiveRecord::Migration
  def up
    remove_column :menus, :content
  end

  def down
    add_column :menus, :content, :string
  end
end
