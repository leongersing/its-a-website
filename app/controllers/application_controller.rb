# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  filter_parameter_logging :password, :password_confirmation
  helper_method :current_user_session, :current_user

  private
  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

  def current_user
    return @current_user if defined?(@current_user)
    @current_user = current_user_session && current_user_session.user
  end
  
  def require_user
    unless current_user
      flash[:notice] = "You must be logged in to access this page"
      redirect_to new_user_session_path
      return false
    end
  end

  def require_no_user
    if current_user
      flash[:notice] = "You must be logged out to access this page"
      redirect_to root_url
      return false
    end  
  end  
end
