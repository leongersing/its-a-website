require 'spec_helper'

describe Comment do
  before(:each) do
    @valid_attributes = {
      :user_id => 1,
      :session_id => 1,
      :body => "value for body"
    }
  end

  it "should create a new instance given valid attributes" do
    Comment.create!(@valid_attributes)
  end
end
