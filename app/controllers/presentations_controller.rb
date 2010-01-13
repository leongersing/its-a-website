class PresentationsController < ApplicationController
  
  before_filter :get_user_ratings, :only => [:index, :sort]

  
  def index
    @presentations = Presentation.find(:all)
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
  
  def sort
    @presentations = Presentation.find(:all, :order => params[:id]) 
    render :template => 'presentations/index'
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
  
  private
  
  def get_user_ratings
    @user_ratings = Rating.find_all_by_user_id(current_user.id) 
  end
  
end
