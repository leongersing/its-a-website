class PresentationQuestionsController < ApplicationController
  before_filter :check_authorization, :load_presentation

  def create
    @question = @presentation.presentation_questions.new(params[:presentation_question]) do |q|
    @question.user = current_user
    if @question.save
      redirect_to :action => "show", :controller => "presentations", :id => params[:presentation_id]
    else
      render :action => "show"
    end
  end

  private
    def load_presentation
      @presentation = Presentation.find(params[:presentation_id])
    end
end
