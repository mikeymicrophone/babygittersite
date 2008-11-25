require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Site do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :url => "value for url",
      :description => "value for description",
      :report_url => "value for report_url",
      :user_id => "1"
    }
  end

  it "should create a new instance given valid attributes" do
    Site.create!(@valid_attributes)
  end
end
