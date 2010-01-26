require File.join(File.dirname(__FILE__), '..', 'spec_helper')

describe Conference do
  context "Associations" do
    it { should have_many :presentations }
    it { should belong_to :user }
  end

  context "Validations" do
    # There seems to be a bug with should validate_uniqueness_of 
    xit { should validate_uniqueness_of :name }
    it { should validate_presence_of   :name }
  end
end
