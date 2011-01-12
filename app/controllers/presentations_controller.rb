class PresentationsController < ApplicationController
  def new
    @presentation = Presentation.new
  end

  def create
    @presentation = Presentation.new(params[:presentation])
    if(@presentation.save)
      flash[:success] = "Presentation '#{@presentation.name}' created!"
      redirect_to presentation_path(@presentation)
    else 
      flash[:error] = "FAIL!<br>#{@presentation.errors.full_messages.join("<br>")}"
      render :new
    end
  end

  def show
    @presentation = Presentation.find(params[:id])
  end

  def edit
    @presentation = Presentation.find(params[:id])
  end

  def update
    @presentation = Presentation.find(params[:id])
    if @presentation.update_attributes(params[:presentation])
      flash[:success] = "Presentation '#{@presentation.name}' updated!"
      redirect_to presentation_path(@presentation)
    else
      flash[:error] = "FAIL!<br>#{@presentation.errors.full_messages.join("<br>")}"
      render :edit
    end
  end

  def destroy 
    @presentation = Presentation.find(params[:id])
    @presentation.destroy
    flash[:success] = "Presentation #{@presentation.name} has been removed with extreme prejudice"
    redirect_to presentations_path
  end
end
