class CommentsController < ApplicationController
  
  def create
    if current_user.blank?
      flash[:error] = 'User not logged in'
      redirect_to :root
    else
      comment = Comment.create(:subject => params[:comment][:subject], :user => current_user, :body => params[:comment][:body] )
      if comment.is_valid?
        flash[:success] = 'Comment created!'
      else
        flash[:error] = 'Comment not created'
      end
      redirect_to :back
    end
      
  end
  
end
