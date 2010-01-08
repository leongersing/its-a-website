class PresentationsController < ApplicationController
  def index
    @presentations = Presentation.find(:all, :order=> "start_time desc")
    respond_to do |format|
      format.html
      format.js{@presentations.to_json}
      format.xml{@presentations.to_xml}
    end
  end

  def show
    @presentation = Presentation.find(params[:id])
    respond_to do |format|
      format.html
      format.js{@presentation.to_json}
      format.xml{@presentation.to_xml}
    end
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
