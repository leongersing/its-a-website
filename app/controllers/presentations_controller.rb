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
