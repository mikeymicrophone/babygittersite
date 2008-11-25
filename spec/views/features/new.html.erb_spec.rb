require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/features/new.html.erb" do
  include FeaturesHelper
  
  before(:each) do
    assigns[:feature] = stub_model(Feature,
      :new_record? => true,
      :name => "value for name",
      :description => "value for description"
    )
  end

  it "should render new form" do
    render "/features/new.html.erb"
    
    response.should have_tag("form[action=?][method=post]", features_path) do
      with_tag("input#feature_name[name=?]", "feature[name]")
      with_tag("textarea#feature_description[name=?]", "feature[description]")
    end
  end
end


