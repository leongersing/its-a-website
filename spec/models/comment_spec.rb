require 'spec_helper'

describe Comment do
  before(:each) do
  end

  it "should be a private comment" do
    @private_comment = Comment.new
    @private_comment.private = true
    @private_comment.should be_private
  end

  it "should be a public comment" do
    @public_comment = Comment.new
    @public_comment.private = false
    @public_comment.should_not be_private    
  end

  it "should start out with an empty (nil) comment" do
    @comment = Comment.new
    @comment.body.should be_nil        
  end
  
  it "should be able to store descriptive text" do
    @comment = Comment.new
    @comment.body="This is some text"
    @comment.body.should_not be_empty        
  end
  
end
