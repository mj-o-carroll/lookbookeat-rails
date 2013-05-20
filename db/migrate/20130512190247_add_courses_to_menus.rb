class AddCoursesToMenus < ActiveRecord::Migration
  def change
    add_column :menus, :starter_1, :string
    add_column :menus, :starter_2, :string
    add_column :menus, :starter_3, :string
  end
end
