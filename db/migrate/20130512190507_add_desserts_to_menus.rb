class AddDessertsToMenus < ActiveRecord::Migration
  def change
    add_column :menus, :dessert_1, :string
    add_column :menus, :dessert_2, :string
    add_column :menus, :dessert_3, :string
  end
end
