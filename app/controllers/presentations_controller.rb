class PresentationsController < ApplicationController
  def index
    @presentations = Presentation.all
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
    @presentation = Presentation.new(params[:presentation])
    @presentation.save!
  end

  def update
    @presentation = Presentation.find(params[:id])
    @presentation.update_attributes(params[:presentation])
  end

  def destroy
    Presentation.find(params[:id]).delete
  end
end
