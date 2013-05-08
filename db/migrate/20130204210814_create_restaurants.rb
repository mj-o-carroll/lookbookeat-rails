class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :phone_no
      t.string :email
      t.string :picture
      t.string :description
      t.string :location
      t.string :food_type
      t.string :price_range
      t.integer :rating
      t.integer :veg_friendly
      t.integer :vegan_friendly
      t.integer :coeliac_friendly

      t.timestamps
    end
  end
end
