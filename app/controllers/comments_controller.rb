class CommentsController < ApplicationController
  def create
    comment = Comment.new(params[:comment])
    comment.user = current_user
    comment.presentation_id = (params[:presentation_id])
    if comment.save
      flash[:success] = "Thanks for your 'Me too!'"
    else
      flash[:error] = "Couldn't save your comment...it's a trap!"
    end
    redirect_to presentation_path(params[:presentation_id])
  end
end
