require 'spec_helper'

describe Session do
  before(:each) do
    @valid_attributes = {
      :title => "value for title",
      :description => "value for description",
      :start_time => Time.now,
      :location => "value for location",
      :level => "value for level",
      :technology => "value for technology",
      :category_id => 1,
      :reference_data => "value for reference_data"
    }
  end

  it "should create a new instance given valid attributes" do
    Session.create!(@valid_attributes)
  end

end

  
