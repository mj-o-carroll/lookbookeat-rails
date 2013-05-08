class MenusController < ApplicationController

	def show
    @restaurant = Restaurant.find(params[:id])
    @menu = Menu.where("id = ?",params[:menu_id])
    render 'show'
  end
  
end
