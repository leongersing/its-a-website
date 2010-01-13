require File.join(File.dirname(__FILE__), '..', 'spec_helper')

describe User do
  before(:each) do
    @user1 = User.new
    @user2 = User.new
  end
  
  it "should have no comments when first created" do
    @user1.comments.size.should == 0
  end

  it "should be able to have many comments" do
    @comment1 = Comment.new
    @comment2 = Comment.new
    @user1.comments << @comment1
    @user1.comments.size.should == 1
    @user1.comments << @comment2
    @user1.comments.size.should == 2
  end
end  

describe "User role instance methods" do
  before(:each) do
    @user = Factory.create(:user)
  end
  
  describe "with no role" do
    it 'should have no roles' do
      @user.roles.should == []
    end
  end
  
  describe "with a single role" do
    before(:each) do
      @user.roles = ['attendee']
    end

    it 'can assign one role' do
      @user.roles.should == ['attendee']
    end

    it 'determines if the user has a role' do
      @user.has_role?('attendee').should be_true
    end
  end
  
  describe 'with multiple roles' do
    before(:each) do
      @user.roles = ['attendee', 'speaker']
    end
    
    it 'can assign multiple roles' do
      @user.should have(2).roles
      @user.roles.should include('attendee')
      @user.roles.should include('speaker')
    end
    
    it 'determines if the user has the role' do
      @user.should have_role('attendee')
      @user.should have_role('speaker')
    end
  end
end

describe "User role class methods" do
  it 'returns all users for a particular role' do
    attendee = Factory.create(:user, :roles => ['attendee'])
    speaker = Factory.create(:user, :roles => ['speaker'])
    
    User.with_role('attendee').should include(attendee)
  end
  
  it 'returns users when they have multiple roles' do
    attendee = Factory.create(:user, :roles => ['attendee'])
    speaker_attendee = Factory.create(:user, :roles => ['speaker', 'attendee'])
    Factory.create(:user, :roles => ['organizer'])
    
    attendees = User.with_role('attendee')
    
    attendees.should have(2).attendees
    attendees.should include(attendee)
    attendees.should include(speaker_attendee)
  end
end
