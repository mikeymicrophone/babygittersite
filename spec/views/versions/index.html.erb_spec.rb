require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/versions/index.html.erb" do
  include VersionsHelper
  
  before(:each) do
    assigns[:versions] = [
      stub_model(Version,
        :maintainer => "value for maintainer",
        :repo_path => "value for repo_path",
        :description => "value for description"
      ),
      stub_model(Version,
        :maintainer => "value for maintainer",
        :repo_path => "value for repo_path",
        :description => "value for description"
      )
    ]
  end

  it "should render list of versions" do
    render "/versions/index.html.erb"
    response.should have_tag("tr>td", "value for maintainer", 2)
    response.should have_tag("tr>td", "value for repo_path", 2)
    response.should have_tag("tr>td", "value for description", 2)
  end
end

