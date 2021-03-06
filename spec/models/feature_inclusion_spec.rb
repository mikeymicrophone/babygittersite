require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe FeatureInclusion do
  before(:each) do
    @valid_attributes = {
      :version_id => "1",
      :feature_id => "1"
    }
  end

  it "should create a new instance given valid attributes" do
    FeatureInclusion.create!(@valid_attributes)
  end
end
