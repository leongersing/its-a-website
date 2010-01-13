require 'spec_helper'
require 'presentation'

describe Presentation do
  before(:each) do
    @user = User.create(:login => "face", :password => "face", :password_confirmation => "face", :email => "tsnydermtg@gmail.com")
    @presentation = Presentation.new
    @presentation.save
  end
  
  it "cannot be rated by the same user twice" do
    @presentation.rate_thumbs_up(@user)
    @presentation.rate_thumbs_up(@user)
    @presentation.positive_ratings.should == 1
  end
end