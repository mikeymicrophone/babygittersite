require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/features/show.html.erb" do
  include FeaturesHelper
  
  before(:each) do
    assigns[:feature] = @feature = stub_model(Feature,
      :name => "value for name",
      :description => "value for description"
    )
  end

  it "should render attributes in <p>" do
    render "/features/show.html.erb"
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ description/)
  end
end

