class PresentationsController < ApplicationController
  def index
    @presentations = Presentations.upcoming
    respond_to do |format|
      format.html
      format.js{@presentations.to_json}
      format.xml{@presentations.to_xml}
    end
  end

  def show
    @presentations = Presentations.find(params[:id])
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
