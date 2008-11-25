require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Version do
  before(:each) do
    @valid_attributes = {
      :maintainer => "value for maintainer",
      :repo_path => "value for repo_path",
      :description => "value for description"
    }
  end

  it "should create a new instance given valid attributes" do
    Version.create!(@valid_attributes)
  end
end
