require 'spec_helper'

describe FeedbackController do
  before(:each) do
    @user = Factory(:user)
    controller.stubs(:current_user).returns(@user)
  end
  
  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end 
    
    it "should get a list of presentations" do 
      get 'index'
      assigns(:presentations).should be_a(Array)
    end
  end
end
