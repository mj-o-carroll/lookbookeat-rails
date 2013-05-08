class Menu < ActiveRecord::Base
  attr_accessible :content, :menu_type, :title, :restaurant_id

  belongs_to :restaurant
  
end
