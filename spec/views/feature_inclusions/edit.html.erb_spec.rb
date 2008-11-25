require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/feature_inclusions/edit.html.erb" do
  include FeatureInclusionsHelper
  
  before(:each) do
    assigns[:feature_inclusion] = @feature_inclusion = stub_model(FeatureInclusion,
      :new_record? => false
    )
  end

  it "should render edit form" do
    render "/feature_inclusions/edit.html.erb"
    
    response.should have_tag("form[action=#{feature_inclusion_path(@feature_inclusion)}][method=post]") do
    end
  end
end


