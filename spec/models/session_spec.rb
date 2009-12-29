require 'spec_helper'

describe Session do
  context "#all" do 
    it "should pull all sessions starting from the Session array" do
      Session.all.each do |session|
        session["Track"].should_not be_nil
      end
    end
  end
end
