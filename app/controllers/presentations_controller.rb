class PresentationsController < ApplicationController
  def index
    @presentations = Presentation.find(:all)
    @user_ratings = Rating.find_all_by_user_id(current_user.id)
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
