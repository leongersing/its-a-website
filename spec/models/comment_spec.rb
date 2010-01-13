require 'spec_helper'

describe Comment do
  before(:each) do
    @private_comment = Comment.new
    @private_comment.private = true

    @public_comment = Comment.new
    @public_comment.private = false
  end

  it "should be a private comment" do
    @private_comment.should be_private
  end

  it "should be a public comment" do
    @public_comment.should_not be_private    
  end
  
  
  # it "should be able to store descriptive text" do
    # !@public_comment.private?
  # end
  
end
