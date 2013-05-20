class AddMainsToMenus < ActiveRecord::Migration
  def change
    add_column :menus, :main_1, :string
    add_column :menus, :main_2, :string
    add_column :menus, :main_3, :string
  end
end
