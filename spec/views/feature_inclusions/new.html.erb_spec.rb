require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/feature_inclusions/new.html.erb" do
  include FeatureInclusionsHelper
  
  before(:each) do
    assigns[:feature_inclusion] = stub_model(FeatureInclusion,
      :new_record? => true
    )
  end

  it "should render new form" do
    render "/feature_inclusions/new.html.erb"
    
    response.should have_tag("form[action=?][method=post]", feature_inclusions_path) do
    end
  end
end


