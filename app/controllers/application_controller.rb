class ApplicationController < ActionController::Base
  protect_from_forgery

  protected

    def current_user
      @current_user ||= User.find_by_id(session[:user_id])
    end

    def signed_in?
      !!current_user
    end

    helper_method :current_user, :signed_in?

    def current_user=(user)
      @current_user = user
      session[:user_id] = user.id
    end

    def check_authorization
      redirect_to '/auth/twitter?return_to=' << request.request_uri unless signed_in?
    end
end
