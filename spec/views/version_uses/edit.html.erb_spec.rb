require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/version_uses/edit.html.erb" do
  include VersionUsesHelper
  
  before(:each) do
    assigns[:version_use] = @version_use = stub_model(VersionUse,
      :new_record? => false)
  end

  it "should render edit form" do
    render "/version_uses/edit.html.erb"
    
    response.should have_tag("form[action=#{version_use_path(@version_use)}][method=post]") do
    end
  end
end


