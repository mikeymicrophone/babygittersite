require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/sites/show.html.erb" do
  include SitesHelper
  
  before(:each) do
    assigns[:site] = @site = stub_model(Site,
      :name => "value for name",
      :url => "value for url",
      :description => "value for description",
      :report_url => "value for report_url"
    )
  end

  it "should render attributes in <p>" do
    render "/sites/show.html.erb"
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ url/)
    response.should have_text(/value\ for\ description/)
    response.should have_text(/value\ for\ report_url/)
  end
end

