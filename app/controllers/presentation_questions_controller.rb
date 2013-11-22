class PresentationQuestionsController < ApplicationController
  before_filter :check_authorization, :load_presentation

  def create
    @question = @presentation.presentation_questions.new(params[:presentation_question])
    @question.user = @current_user
    if @question.save
      redirect_to presentation_path(@presentation)
    else
      render :action => "show"
    end
  end

  def load_presentation
    @presentation = Presentation.find_by_id params[:presentation_id]
  end
end
