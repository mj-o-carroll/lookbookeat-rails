class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.date :date

      t.timestamps
    end
  end
end
