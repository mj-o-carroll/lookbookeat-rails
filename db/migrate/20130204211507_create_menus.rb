class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :title
      t.text :content
      t.string :menu_type

      t.timestamps
    end
  end
end
