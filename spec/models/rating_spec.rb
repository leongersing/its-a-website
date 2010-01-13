require 'spec_helper'
require 'rating'

describe Rating do
  before(:each) do
    @user = User.create(:login => "face", :password => "face", :password_confirmation => "face", :email => "tsnydermtg@gmail.com")
    @rating = @user.ratings.new
    @rating.save
  end

  it "should belong to a user" do
    @rating.user_id.should_not == nil
  end
  
  it "should rate a presentation positively" do
    preso = Presentation.create(:title=>"foo")
    preso.rate_thumbs_up(@user)
    preso.positive_ratings.should == 1
  end

  it "should rate a presentation negatively" do
    preso = Presentation.create(:title=>"foo")
    preso.rate_thumbs_down(@user)
    preso.negative_ratings.should == 1
  end
end