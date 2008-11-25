require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe FeatureInclusionsController do
  describe "route generation" do
    it "should map #index" do
      route_for(:controller => "feature_inclusions", :action => "index").should == "/feature_inclusions"
    end
  
    it "should map #new" do
      route_for(:controller => "feature_inclusions", :action => "new").should == "/feature_inclusions/new"
    end
  
    it "should map #show" do
      route_for(:controller => "feature_inclusions", :action => "show", :id => 1).should == "/feature_inclusions/1"
    end
  
    it "should map #edit" do
      route_for(:controller => "feature_inclusions", :action => "edit", :id => 1).should == "/feature_inclusions/1/edit"
    end
  
    it "should map #update" do
      route_for(:controller => "feature_inclusions", :action => "update", :id => 1).should == "/feature_inclusions/1"
    end
  
    it "should map #destroy" do
      route_for(:controller => "feature_inclusions", :action => "destroy", :id => 1).should == "/feature_inclusions/1"
    end
  end

  describe "route recognition" do
    it "should generate params for #index" do
      params_from(:get, "/feature_inclusions").should == {:controller => "feature_inclusions", :action => "index"}
    end
  
    it "should generate params for #new" do
      params_from(:get, "/feature_inclusions/new").should == {:controller => "feature_inclusions", :action => "new"}
    end
  
    it "should generate params for #create" do
      params_from(:post, "/feature_inclusions").should == {:controller => "feature_inclusions", :action => "create"}
    end
  
    it "should generate params for #show" do
      params_from(:get, "/feature_inclusions/1").should == {:controller => "feature_inclusions", :action => "show", :id => "1"}
    end
  
    it "should generate params for #edit" do
      params_from(:get, "/feature_inclusions/1/edit").should == {:controller => "feature_inclusions", :action => "edit", :id => "1"}
    end
  
    it "should generate params for #update" do
      params_from(:put, "/feature_inclusions/1").should == {:controller => "feature_inclusions", :action => "update", :id => "1"}
    end
  
    it "should generate params for #destroy" do
      params_from(:delete, "/feature_inclusions/1").should == {:controller => "feature_inclusions", :action => "destroy", :id => "1"}
    end
  end
end
