require File.join(File.dirname(__FILE__), '..', 'spec_helper')

describe CommentsController do
    
    before :each do
      @params = {:subect_id => 1, :subject_type => 'Presentation'}
      @request.env["HTTP_REFERER"] = "/"
    end
    
    def do_create
      post :create
    end
    
    it 'should not create if user not logged in' do
      current_user = nil
      do_create
      response.should be_redirect
    end
    
    it 'should create a comment if user logged in' do
      current_user = User.new
      current_user.stubs(:id).returns('1')
      do_create
      response.should be_redirect
      #Comment.should_receive(:create).with(params[:username], params[:password]).and_return(false)
    end

end
