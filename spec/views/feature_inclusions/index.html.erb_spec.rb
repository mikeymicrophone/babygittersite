require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/feature_inclusions/index.html.erb" do
  include FeatureInclusionsHelper
  
  before(:each) do
    assigns[:feature_inclusions] = [
      stub_model(FeatureInclusion
      ),
      stub_model(FeatureInclusion
      )
    ]
  end

  it "should render list of feature_inclusions" do
    render "/feature_inclusions/index.html.erb"
  end
end

