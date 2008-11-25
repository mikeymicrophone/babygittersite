require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe VersionUse do
  before(:each) do
    @valid_attributes = {
      :site_id => "1",
      :version_id => "1"
    }
  end

  it "should create a new instance given valid attributes" do
    VersionUse.create!(@valid_attributes)
  end
end
