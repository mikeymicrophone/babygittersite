require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/versions/edit.html.erb" do
  include VersionsHelper
  
  before(:each) do
    assigns[:version] = @version = stub_model(Version,
      :new_record? => false,
      :maintainer => "value for maintainer",
      :repo_path => "value for repo_path",
      :description => "value for description"
    )
  end

  it "should render edit form" do
    render "/versions/edit.html.erb"
    
    response.should have_tag("form[action=#{version_path(@version)}][method=post]") do
      with_tag('input#version_maintainer[name=?]', "version[maintainer]")
      with_tag('input#version_repo_path[name=?]', "version[repo_path]")
      with_tag('textarea#version_description[name=?]', "version[description]")
    end
  end
end


