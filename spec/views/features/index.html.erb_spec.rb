require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/features/index.html.erb" do
  include FeaturesHelper
  
  before(:each) do
    assigns[:features] = [
      stub_model(Feature,
        :name => "value for name",
        :description => "value for description"
      ),
      stub_model(Feature,
        :name => "value for name",
        :description => "value for description"
      )
    ]
  end

  it "should render list of features" do
    render "/features/index.html.erb"
    response.should have_tag("tr>td", "value for name", 2)
    response.should have_tag("tr>td", "value for description", 2)
  end
end

