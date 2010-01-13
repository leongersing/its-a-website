require 'spec_helper'

describe "Comment" do
  it 'cannot be created without a body, subject or user' do    
      comment = Comment.create
      comment.should_not be_valid
  end
  
  it 'can be created with a body, subject and user' do
    comment = Comment.create(:body => "Leon is a knucklehead", :subject_id => 1 , :subject_type => 'Presentation', :user_id => 16 )
    comment.should be_valid
  end
  
end
