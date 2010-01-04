require 'spec_helper'

describe Rating do
  before(:each) do
    @valid_attributes = {
      :user_id => 1,
      :session_id => 1,
      :score => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Rating.create!(@valid_attributes)
  end
end
