class UsersController < ApplicationController
  before_filter :check_authorization

	def show
	  @user = User.find(params[:id])
	end
end

