require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/version_uses/index.html.erb" do
  include VersionUsesHelper
  
  before(:each) do
    assigns[:version_uses] = [
      stub_model(VersionUse),
      stub_model(VersionUse)
    ]
  end

  it "should render list of version_uses" do
    render "/version_uses/index.html.erb"
  end
end

