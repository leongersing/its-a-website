class CommentsController < ApplicationController
  
  def create
    if current_user.blank?
      flash[:error] = 'Please login to comment.'
      redirect_to :root
    else
      if params[:comment] && params[:comment][:subject_type] && params[:comment][:subject_id] && params[:comment][:body]
        comment = Comment.create(:subject_type => params[:comment][:subject_type], :subject_id => params[:comment][:subject_id], :user_id => current_user.id, :body => params[:comment][:body] )
        flash[:success] = 'Comment created!' #if comment.valid?
      end
      flash[:error] = 'Comment not created' unless (comment && comment.valid?)
      redirect_to :back
    end
      
  end
  
end
