require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/feature_inclusions/show.html.erb" do
  include FeatureInclusionsHelper
  
  before(:each) do
    assigns[:feature_inclusion] = @feature_inclusion = stub_model(FeatureInclusion
    )
  end

  it "should render attributes in <p>" do
    render "/feature_inclusions/show.html.erb"
  end
end

