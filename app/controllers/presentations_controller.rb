class PresentationsController < ApplicationController
  
  before_filter :require_user, :only=> [:index, :vote_up, :vote_down]
  before_filter :get_user_ratings, :only => [:index, :sort]

  
  def index
    @presentations = Presentation.all
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
    if params[:id] == "positive_ratings" || params[:id] == "negative_ratings"
      @presentations = Presentation.find(:all, :order => "#{params[:id]} DESC"  ) 
    else
      @presentations = Presentation.find(:all, :order => params[:id]) 
    end
    render :template => 'presentations/index'
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
  
  private
  
  def get_user_ratings
    @user_ratings = Rating.find_all_by_user_id(current_user.id) 
  end
  
end
