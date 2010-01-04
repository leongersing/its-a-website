require 'spec_helper' 

describe "Putting comments on sessions" do
  it "allows registered users to comment on a session" do
    session = Factory :session
    user = Factory :user
    session.comments.create :user=>user, :body=>"I loved it!"
    session.save
    session.comments.count.should == 1
    
    user.comments.count.should == 1
  end
end