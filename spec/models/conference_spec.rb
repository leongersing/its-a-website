require File.join(File.dirname(__FILE__), '..', 'spec_helper')

describe Conference do
  it { should be_a Conference }
  it { subject.should respond_to(:user) }

end
