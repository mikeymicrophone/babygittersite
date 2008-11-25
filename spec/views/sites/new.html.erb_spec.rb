require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/sites/new.html.erb" do
  include SitesHelper
  
  before(:each) do
    assigns[:site] = stub_model(Site,
      :new_record? => true,
      :name => "value for name",
      :url => "value for url",
      :description => "value for description",
      :report_url => "value for report_url"
    )
  end

  it "should render new form" do
    render "/sites/new.html.erb"
    
    response.should have_tag("form[action=?][method=post]", sites_path) do
      with_tag("input#site_name[name=?]", "site[name]")
      with_tag("input#site_url[name=?]", "site[url]")
      with_tag("textarea#site_description[name=?]", "site[description]")
      with_tag("input#site_report_url[name=?]", "site[report_url]")
    end
  end
end


