class PresentationsController < ApplicationController
  def index
    @presentations = Presentation.find(:all)
    @user_ratings = Rating.find_all_by_user_id(current_user.id)
  end

  def vote_up
  	presentation = Presentation.find(params[:id])
  	presentation.rate_thumbs_up(current_user)
  	redirect_to :action => :index
  end
  
  def vote_down
  	presentation = Presentation.find(params[:id])
  	presentation.rate_thumbs_down(current_user)
  	redirect_to :action => :index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
