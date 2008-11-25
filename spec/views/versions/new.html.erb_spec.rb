require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/versions/new.html.erb" do
  include VersionsHelper
  
  before(:each) do
    assigns[:version] = stub_model(Version,
      :new_record? => true,
      :maintainer => "value for maintainer",
      :repo_path => "value for repo_path",
      :description => "value for description"
    )
  end

  it "should render new form" do
    render "/versions/new.html.erb"
    
    response.should have_tag("form[action=?][method=post]", versions_path) do
      with_tag("input#version_maintainer[name=?]", "version[maintainer]")
      with_tag("input#version_repo_path[name=?]", "version[repo_path]")
      with_tag("textarea#version_description[name=?]", "version[description]")
    end
  end
end


