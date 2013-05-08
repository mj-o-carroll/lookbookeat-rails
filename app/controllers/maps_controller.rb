class MapsController < ApplicationController

	def show
	
    @map = Map.find(params[:id])
    @json = @map.to_gmaps4rails
    render 'show'
  end
    
  end



