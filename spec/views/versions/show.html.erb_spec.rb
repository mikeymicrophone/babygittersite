require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/versions/show.html.erb" do
  include VersionsHelper
  
  before(:each) do
    assigns[:version] = @version = stub_model(Version,
      :maintainer => "value for maintainer",
      :repo_path => "value for repo_path",
      :description => "value for description"
    )
  end

  it "should render attributes in <p>" do
    render "/versions/show.html.erb"
    response.should have_text(/value\ for\ maintainer/)
    response.should have_text(/value\ for\ repo_path/)
    response.should have_text(/value\ for\ description/)
  end
end

