class UsersController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => [:show, :edit, :update]
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      if params[:is_presenter][:role] == '1'
        @user.presenter = Presenter.create(:name => params[:presenter][:name], :bio => params[:presenter][:bio], :contact_info => params[:presenter][:contact_info], :blog_url => params[:presenter][:blog_url], :twitter_name => params[:presenter][:twitter_name])
        @user.save
      end          
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
      if params[:is_presenter][:role] == '1'
        if @user.presenter
          @user.presenter.update_attributes(params[:presenter])
        else
          @user.presenter = Presenter.create(:name => params[:presenter][:name], :bio => params[:presenter][:bio], :contact_info => params[:presenter][:contact_info], :blog_url => params[:presenter][:blog_url], :twitter_name => params[:presenter][:twitter_name])
          @user.save
        end          
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
