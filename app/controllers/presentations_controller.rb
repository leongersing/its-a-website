class PresentationsController < ApplicationController
  def index
    @presentations = Presentation.find(:all, :order => "name")
  end
  
  def new
    @presentation = Presentation.new
  end

  def create
    @presentation = Presentation.create(params[:presentation])
    if(@presentation.save)
      flash[:success] = "Presentation '#{@presentation}' created!"
      redirect_to presentation_path(@presentation)
    else 
      flash[:error] = "FAIL!<br>#{@presentation.errors.full_messages.join("<br>")}"
      render :new
    end
  end

  def show
    @presentation = Presentation.find(params[:id])
  end
end
