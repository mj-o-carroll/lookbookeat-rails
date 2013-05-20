class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @userscomments = Comment.where("user_id = ?",params[:id])
    
    Rails.logger.debug("Debug info #{params}")

    respond_to do |format|
           format.html # show.html.erb
           format.json { render :json => @user}
  end

end

def index
  @user = User.all 

  respond_to do |format|
           
           format.json { render :json => @user}
  end

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to the LookBookEat!" 
      redirect_to @user
    else
      render 'new'
    end
  end



end


