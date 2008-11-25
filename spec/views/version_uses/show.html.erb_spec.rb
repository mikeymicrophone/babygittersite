require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/version_uses/show.html.erb" do
  include VersionUsesHelper
  
  before(:each) do
    assigns[:version_use] = @version_use = stub_model(VersionUse)
  end

  it "should render attributes in <p>" do
    render "/version_uses/show.html.erb"
  end
end

