require File.join(File.dirname(__FILE__), '..', 'spec_helper')

describe Category do
  context "Associations" do
    it { should have_many :presentations }
  end
end
