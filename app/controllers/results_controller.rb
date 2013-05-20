class ResultsController < ApplicationController

def index
 
  #@results = Restaurant.search(new_params)

  conditions = {}
conditions[:location] = params[:location] if !params[:location].blank?
conditions[:food_type] = params[:food_type] if !params[:food_type].blank?
conditions[:price_range] = params[:price_range] if !params[:price_range].blank?
conditions[:rating] = params[:rating] if !params[:rating].blank?
if params[:diet] == "Vegetarian Friendly"
  conditions[:veg_friendly] = 1
end
if params[:diet] == "Coeliac Friendly"
  conditions[:coeliac_friendly] = 1
end
if params[:diet] == "Vegan Friendly" 
  conditions[:vegan_friendly] = 1
end



#conditions[:id] = params[:id] if params[:id]
#conditions[:email] = params[:email] if params[:email]
@results = Restaurant.where(conditions)

  #@results = Restaurant.where("location = ?", params[:location]) unless params[:location].blank?

 #"food_type = ?", params[:food_type] unless params[:food_type].blank? , unless params[:location].blank?
 
  render 'show'
 
  Rails.logger.debug("Debug info #{conditions}")
end
end
