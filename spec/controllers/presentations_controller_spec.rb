require File.join(File.dirname(__FILE__), '..', 'spec_helper')

describe PresentationsController do

  it "should be able to add session" do
    presentation = stub(:presentation)
    Presentation.expects(:new).returns(presentation)
    presentation.expects(:save!)
    post :create #, hash
  end

  it "should be update a session" do
    presentation = Presentation.new(:title=>"hello")
    presentation.save!
    post :update, {:id=>presentation.id, :presentation=>{:title => "new"}}
    presentation.reload
    presentation.title.should == "new"
  end

  it "should delete a session" do
    presentation = Presentation.new(:title=>"hello")
    presentation.save!
    post :destroy, {:id=>presentation.id}
    assert_raise(ActiveRecord::RecordNotFound) do
      Presentation.find(presentation.id) 
    end

  end
end

