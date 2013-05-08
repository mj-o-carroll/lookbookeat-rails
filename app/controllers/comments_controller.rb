class CommentsController < ApplicationController

respond_to :json

  def show
    @comment = Comment.find(params[:id])
    respond_to do |format|
           format.html # show.html.erb
           format.json { render :json => @comment}
         end
   end

def index	
  @comment = Comment.all 

  respond_to do |format|
           
           format.json { render :json => @comment, only: [:id, :content, :date, :name, :rating]}

  end

  end

  def new
    @comment = Comment.new
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.find(params[:comment][:id])
    @comment = Comment.new(params[:comment]) 
    @comments = Comment.where("restaurant_id = ?", params[:comment][:id]) 
    if @comment.save
      flash[:success] = "Comment saved!" 
      redirect_to comments_restaurant_path(@restaurant)
    else
      render 'new'
    end
  end
end
