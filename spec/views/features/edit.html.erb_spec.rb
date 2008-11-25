require File.expand_path(File.dirname(__FILE__) + '/../../spec_helper')

describe "/features/edit.html.erb" do
  include FeaturesHelper
  
  before(:each) do
    assigns[:feature] = @feature = stub_model(Feature,
      :new_record? => false,
      :name => "value for name",
      :description => "value for description"
    )
  end

  it "should render edit form" do
    render "/features/edit.html.erb"
    
    response.should have_tag("form[action=#{feature_path(@feature)}][method=post]") do
      with_tag('input#feature_name[name=?]', "feature[name]")
      with_tag('textarea#feature_description[name=?]', "feature[description]")
    end
  end
end


