require 'spec_helper'

describe Rating do

  before(:each) do
    @pres = Factory(:presentation)
    @user = Factory(:user)
  end

  it "should create a new instance given valid attributes" do
    Rating.create(:presentation => @pres,
                  :user         => @user,
                  :score        => 1)
  end

  it "ensures only one vote per user per preso." do
    Rating.create(:presentation => @pres,
                  :user         => @user,
                  :score        => 1).should be_valid

    Rating.create(:presentation => @pres,
                    :user         => @user,
                    :score        => 1).should_not be_valid

  end
end
