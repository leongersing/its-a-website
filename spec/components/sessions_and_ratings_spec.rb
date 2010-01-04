require 'spec_helper' 

describe "Putting ratings on sessions" do
  it "allows registered users to rate a session" do
    session = Factory :session
    user1 = Factory(:user)
    session.ratings.create :user=>user1, :score=>1
    session.ratings.create :user=>Factory(:user), :score=>1
    session.ratings.create :user=>Factory(:user), :score=>1
    session.save
    
    session.ratings.count.should == 3
    session.positive_ratings.count.should == 3
    session.negative_ratings.count.should == 0
    
    user1.ratings.count.should == 1
  end
  
  it "allows registered users to hate a session" do
    session = Factory :session
    user1 = Factory(:user)
    session.ratings.create :user=>user1, :score=>-1
    session.ratings.create :user=>Factory(:user), :score=>-1
    session.ratings.create :user=>Factory(:user), :score=>-1
    session.save
    
    session.ratings.count.should == 3
    session.positive_ratings.count.should == 0
    session.negative_ratings.count.should == 3
    
    user1.ratings.count.should == 1
  end
end