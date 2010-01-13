require 'spec_helper'

describe PresentationsController do

  it "should be able to add session" do
    presentation = stub(:presentation)
    Presentation.expects(:new).returns(presentation)
    presentation.expects(:save)
    post :create #, hash
  end
  
end

