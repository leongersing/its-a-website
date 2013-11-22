class SessionsController < ApplicationController
  def create
    auth = request.env['rack.auth']
    unless @auth = Authorization.find_from_hash(auth)
      @auth = Authorization.create_from_hash(auth, current_user)
    end
    self.current_user = @auth.user

    #render :text => "Welcome, #{current_user.name}."
    redirect_to params[:return_to]
  end

  def create_by_name
    self.current_user = User.find_by_name(params[:name])
    redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to :controller => "presentations"
  end
end
