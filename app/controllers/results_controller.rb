class ResultsController < ApplicationController

def index	
  @results = Restaurant.search(params)
  render 'show'
end
end
