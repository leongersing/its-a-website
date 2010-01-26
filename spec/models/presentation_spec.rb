require File.join(File.dirname(__FILE__), '..', 'spec_helper')
require 'presentation'

describe Presentation do
  context "Associations" do
    it { should belong_to :category }
    it { should have_many :ratings }
    it { should have_many :comments, :as => :subject, :dependent => :destroy }
    it { should have_and_belong_to_many :presenters, :class_name => 'PresenterProfile' }
  end

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
