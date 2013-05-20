class AppcommentsController < ApplicationController
   

  protect_from_forgery :except => :create

	def create
    @restaurant = Restaurant.find(params[:appcomment][:restaurant_id])
    @comment = Comment.new(params[:appcomment]) 
    @comments = Comment.where("restaurant_id = ?", params[:appcomment][:restaurant_id]) 

    if @comment.save
    
    @total_ratings = 0
    
     for comment in @comments
    
      @total_ratings += comment.rating.to_f

    end
    
    @new_rating = (@total_ratings / @comments.count).ceil

    @restaurant.update_attributes(:rating => @new_rating) 
    
    
    end
  end
end
