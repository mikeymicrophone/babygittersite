require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe VersionUsesController do
  describe "route generation" do
    it "should map #index" do
      route_for(:controller => "version_uses", :action => "index").should == "/version_uses"
    end
  
    it "should map #new" do
      route_for(:controller => "version_uses", :action => "new").should == "/version_uses/new"
    end
  
    it "should map #show" do
      route_for(:controller => "version_uses", :action => "show", :id => 1).should == "/version_uses/1"
    end
  
    it "should map #edit" do
      route_for(:controller => "version_uses", :action => "edit", :id => 1).should == "/version_uses/1/edit"
    end
  
    it "should map #update" do
      route_for(:controller => "version_uses", :action => "update", :id => 1).should == "/version_uses/1"
    end
  
    it "should map #destroy" do
      route_for(:controller => "version_uses", :action => "destroy", :id => 1).should == "/version_uses/1"
    end
  end

  describe "route recognition" do
    it "should generate params for #index" do
      params_from(:get, "/version_uses").should == {:controller => "version_uses", :action => "index"}
    end
  
    it "should generate params for #new" do
      params_from(:get, "/version_uses/new").should == {:controller => "version_uses", :action => "new"}
    end
  
    it "should generate params for #create" do
      params_from(:post, "/version_uses").should == {:controller => "version_uses", :action => "create"}
    end
  
    it "should generate params for #show" do
      params_from(:get, "/version_uses/1").should == {:controller => "version_uses", :action => "show", :id => "1"}
    end
  
    it "should generate params for #edit" do
      params_from(:get, "/version_uses/1/edit").should == {:controller => "version_uses", :action => "edit", :id => "1"}
    end
  
    it "should generate params for #update" do
      params_from(:put, "/version_uses/1").should == {:controller => "version_uses", :action => "update", :id => "1"}
    end
  
    it "should generate params for #destroy" do
      params_from(:delete, "/version_uses/1").should == {:controller => "version_uses", :action => "destroy", :id => "1"}
    end
  end
end
