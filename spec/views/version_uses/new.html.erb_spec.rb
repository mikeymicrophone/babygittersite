require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/version_uses/new.html.erb" do
  include VersionUsesHelper
  
  before(:each) do
    assigns[:version_use] = stub_model(VersionUse,
      :new_record? => true)
  end

  it "should render new form" do
    render "/version_uses/new.html.erb"
    
    response.should have_tag("form[action=?][method=post]", version_uses_path) do
    end
  end
end


