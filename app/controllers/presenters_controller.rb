class PresentersController < ApplicationController
  def show
    @presenter = Presenter.find(params[:id])
    respond_to do |format|
      format.html
    end
  end
end
