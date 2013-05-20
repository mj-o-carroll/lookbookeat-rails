class Menu < ActiveRecord::Base
  attr_accessible :content, :menu_type, :title, :restaurant_id, :starter_1, :starter_2, :starter_3, :main_1, :main_2, :main_3,
 :dessert_1, :dessert_2, :dessert_3
  belongs_to :restaurant
  
end
