require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/sites/edit.html.erb" do
  include SitesHelper
  
  before(:each) do
    assigns[:site] = @site = stub_model(Site,
      :new_record? => false,
      :name => "value for name",
      :url => "value for url",
      :description => "value for description",
      :report_url => "value for report_url"
    )
  end

  it "should render edit form" do
    render "/sites/edit.html.erb"
    
    response.should have_tag("form[action=#{site_path(@site)}][method=post]") do
      with_tag('input#site_name[name=?]', "site[name]")
      with_tag('input#site_url[name=?]', "site[url]")
      with_tag('textarea#site_description[name=?]', "site[description]")
      with_tag('input#site_report_url[name=?]', "site[report_url]")
    end
  end
end


