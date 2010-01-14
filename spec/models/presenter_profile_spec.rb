require 'spec_helper'

describe PresenterProfile do
  
  context "Associations" do
    it { should belong_to :user }
    it { should have_and_belong_to_many :presentations }
  end
end