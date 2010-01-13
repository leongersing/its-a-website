class UsersController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => [:show, :edit, :update]
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Account registered!"
      redirect_to account_url
    else
      render :action => :new
    end
  end
  
  def show
    @user = @current_user
  end
  
  def edit
    @user = @current_user
  end
  
  def update
    @user = @current_user # makes our views "cleaner" and more consistent
    if @user.update_attributes(params[:user])
      if params[:is_presenter][:role] == '1' && !@user.presenter
        @user.presenter = Presenter.create
        @user.save
      elsif params[:is_presenter][:role] == '0' && @user.presenter
        @user.presenter.destroy
        @user.presenter = nil
        @user.save
      end
      flash[:notice] = "Account updated!"
      redirect_to account_url
    else
      render :action => :edit
    end
  end  
end
