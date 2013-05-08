class CreateSpecialOffers < ActiveRecord::Migration
  def change
    create_table :special_offers do |t|
      t.string :so_title
      t.date :so_start
      t.date :so_finish
      t.text :so_description
      t.text :so_content

      t.timestamps
    end
  end
end
