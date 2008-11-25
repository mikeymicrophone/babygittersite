require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/sites/index.html.erb" do
  include SitesHelper
  
  before(:each) do
    assigns[:sites] = [
      stub_model(Site,
        :name => "value for name",
        :url => "value for url",
        :description => "value for description",
        :report_url => "value for report_url"
      ),
      stub_model(Site,
        :name => "value for name",
        :url => "value for url",
        :description => "value for description",
        :report_url => "value for report_url")
    ]
  end

  it "should render list of sites" do
    render "/sites/index.html.erb"
    # response.should have_tag("tr>td", "value for name", 2)
    response.should have_tag("tr>td", "value for url", 2)
    response.should have_tag("tr>td", "value for description", 2)
    # response.should have_tag("tr>td", "value for report_url", 2)
  end
end

