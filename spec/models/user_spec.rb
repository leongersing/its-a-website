require 'spec_helper'

describe User do
  before(:each) do
    @user1 = User.new
    @user2 = User.new
  end
  
  it "should have no comments when first created" do
    @user1.comments.size.should == 0
  end

  it "should be able to have many comments" do
    @comment1 = Comment.new
    @comment2 = Comment.new
    @user1.comments << @comment1
    @user1.comments.size.should == 1
    @user1.comments << @comment2
    @user1.comments.size.should == 2
  end
    
end
