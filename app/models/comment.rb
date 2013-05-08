class Comment < ActiveRecord::Base
  attr_accessible :content, :date, :name, :rating, :restaurant_id, :user_id

  belongs_to :restaurant
  belongs_to :user
end
