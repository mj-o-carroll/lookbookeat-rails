class RestaurantsController < ApplicationController
  
  respond_to :json

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def comments
  @comment = Comment.new
  @restaurant = Restaurant.find(params[:id])
  @comments = Comment.where("restaurant_id = ?",params[:id])
  Rails.logger.debug("Debug info #{params}")
  
  render 'comments'
  end

  def booking

  @restaurant = Restaurant.find(params[:id])
  render 'booking'
  end

  def create_booking

  @restaurant = Restaurant.find(params[:id])  
  BookingMailer.booking_email(@restaurant).deliver
  redirect_to booking_restaurant_path(@restaurant)
  Rails.logger.debug("Debug info #{params}")
  end

  def map
  
    @restaurant = Restaurant.find(params[:id])
    @json = @restaurant.to_gmaps4rails
    render 'map'
  end

  def menu
    @restaurant = Restaurant.find(params[:id])
    @menus = Menu.where("restaurant_id = ?",params[:id])
    render 'menu'
  end

def index
  @restaurant = Restaurant.all 
  respond_to do |format|
           
           format.json { render :json => @restaurant, only: [:id, :name, :address, :phone_no, :email, :picture, :description, :location, :food_type, :price_range, :rating, :veg_friendly, :coeliac_friendly, :vegan_friendly]}
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant])
    if @restaurant.save
      flash[:success] = "Welcome to the LookBookEat!" 
      redirect_to @restaurant
    else
      render 'new'
    end
  end
  end

end
