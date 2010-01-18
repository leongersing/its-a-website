class UsersController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => [:show, :edit, :update]
  before_filter :set_user, :only => [:show, :edit, :update]
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      if params[:is_presenter][:role] == '1'
        @user.presenter_profile.create(params[:presenter])
        @user.save
      end          
      flash[:notice] = "Account registered!"
      redirect_to account_url
    else
      render :action => :new
    end
  end
  
  def show
  end
  
  def edit
  end
  
  def update
    if @user.update_attributes(params[:user])
      if params[:is_presenter][:role] == '1'
        if @user.presenter_profile
          @user.presenter_profile.update_attributes(params[:presenter])
        else
          @user.presenter_profile.create(params[:presenter])
          @user.save
        end          
      elsif params[:is_presenter][:role] == '0' && @user.presenter_profile
        @user.presenter_profile.destroy
        @user.presenter_profile = nil
        @user.save
      end
      flash[:notice] = "Account updated!"
      redirect_to account_url
    else
      render :action => :edit
    end
  end

  private
  def set_user
    @user = @current_user
  end
end
