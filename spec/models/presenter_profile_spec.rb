require 'spec_helper'

describe PresenterProfile do
  context "Associations" do
    it { should belong_to :user }
    it { should have_and_belong_to_many :presentations }
  end
  
  context "Validations" do
    # There seems to be a bug with should validate_uniqueness_of 
    xit { should validate_uniqueness_of :user_id, :scope => :presentation_id }
  end
end
