class MenusController < ApplicationController

respond_to :json

def index	
  @menus = Menu.all 

 respond_to do |format|
           
           format.json { render :json => @menus, only: [:id, :content, :menu_type, :title, :restaurant_id, :starter_1, :starter_2, :starter_3, :main_1, :main_2, :main_3,
 :dessert_1, :dessert_2, :dessert_3]}

end
  end

	def show
    @restaurant = Restaurant.find(params[:id])
    @menu = Menu.where("id = ?",params[:menu_id])
    render 'show'
  end
  
end
