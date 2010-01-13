require File.join(File.dirname(__FILE__), '..', 'spec_helper')

describe CommentsController do
    
    before :each do
      #@params = {:comment => {:subect_id => 1, :subject_type => 'Presentation'}}
      @request.env["HTTP_REFERER"] = "/"
    end
    
    def do_create_with_params
      post :create, {:comment => {:subject_id => 1, :subject_type => 'Presentation', :body => 'A comment'}}
    end
    
    def do_create_without_params
      post :create, {}
    end
    
    def mock_current_user
      user = User.new
      user.stubs(:id).returns(1)
      CommentsController.any_instance.stubs(:current_user).returns(user)
    end
    
    it 'should redirect after calling create action' do 
      do_create_with_params
      response.should be_redirect
    end
    
    it 'should not create if user not logged in' do
      do_create_with_params
      flash[:error].should have_text("Please login to comment.")
    end
    
    it 'should not create if user is logged in, but validations fail' do
      mock_current_user
      do_create_without_params
      flash[:error].should have_text("Comment not created")
    end
    
    it 'should not create if user is logged in, but params was empty' do
      mock_current_user
      do_create_without_params
      flash[:error].should have_text("Comment not created")
    end
    
    it 'should create a comment if user logged in' do
      mock_current_user
      do_create_with_params
      flash[:success].should have_text("Comment created!")
      #Comment.should_receive(:create).with(params[:username], params[:password]).and_return(false)
    end

end
