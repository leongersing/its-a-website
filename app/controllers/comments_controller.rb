class CommentsController < ApplicationController
  
  def create
    if current_user.blank?
      flash[:error] = 'Please login to comment.'
      redirect_to :root
    else
      params[:comment][:user_id] = current_user.id
      comment = Comment.create(params[:comment])
      if comment.valid?
        flash[:success] = 'Comment created!'
      else
        flash[:error] = 'Comment not created'
      end
      redirect_to :back
    end
      
  end
  
end
