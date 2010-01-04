require 'spec_helper'

describe "Sessions and Speakers" do
  context "sessions" do
    it "has one speaker" do
      session = Factory(:session)
      session.speakers << Factory(:speaker)
      session.save
      session.should be_valid
      session.speakers.count.should == 1
    end
    it "has many speakers" do 
      session = Factory(:session)
      session.speakers << Factory(:speaker)
      session.speakers << Factory(:speaker)
      session.save
      session.should be_valid
      session.speakers.count.should == 2
    end
    it "can be categorized" do
      session = Factory(:session)
      session.category = Factory(:category)
      session.save
      session.should be_valid
    end
    
    it "'s ok not to be categorized" do
      session = Factory(:session)
      session.save
      session.should be_valid
    end
    it "can be attended"
    it "can be rated by attendees"
  end
end