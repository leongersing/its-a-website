require File.join(File.dirname(__FILE__), '..', 'spec_helper')

describe "Comment" do
  it 'cannot be created without a body, subject or user' do    
      comment = Comment.create
      comment.should_not be_valid
  end
  
  it 'can be created with a body, subject and user' do
    # mock user and presentation
    user = User.new
    user.expects(:save).returns(true)
    presentation = Presentation.new
    presentation.expects(:save).returns(true)  
    comment = Comment.create(:body => "Leon is a knucklehead", :subject => presentation , :user => user )
    comment.should be_valid
  end
  
end
