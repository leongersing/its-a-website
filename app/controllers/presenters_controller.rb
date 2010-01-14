class PresentersController < ApplicationController
  def index
    @presenters = Presenter.all
  end 

  def show
  end
end
