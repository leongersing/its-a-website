require 'spec_helper'

describe "Sessions and Presenters" do
  context "sessions" do
    it "has one presenter" do
      user = Factory(:user, :login=>"Jessica")
      session = Factory(:session)
      session.presenters << user
      session.save
      session.should be_valid
      session.presenters.count.should == 1
      session.presenters.first.login.should == "jessica"
    end
    it "has many presenters" do 
      session = Factory(:session)
      session.presenters << Factory(:user)
      session.presenters << Factory(:user)
      session.save
      session.should be_valid
      session.presenters.count.should == 2
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
  end
end