class PresentationsController < ApplicationController
  def index
    @presentations = Presentation.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @presentation = Presentation.new(params[:presentation])
    @presentation.save
  end

  def update
    @campground = Presentation.find(params[:id])
    @campground.update_attributes(params[:campground])
  end

  def destroy
    Presentation.find(params[:id]).delete
  end
end
