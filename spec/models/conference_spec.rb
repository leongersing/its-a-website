require 'spec_helper'

describe Conference do
  before(:each) do
    @valid_attributes = {
      :title => "value for title",
      :starts_on => Time.now,
      :ends_on => Time.now,
      :description => "value for description"
    }
  end

  it "should create a new instance given valid attributes" do
    Conference.create!(@valid_attributes)
  end
end
