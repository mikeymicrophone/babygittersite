require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe FeatureInclusionsController do

  def mock_feature_inclusion(stubs={})
    @mock_feature_inclusion ||= mock_model(FeatureInclusion, stubs)
  end
  
  describe "responding to GET index" do

    it "should expose all feature_inclusions as @feature_inclusions" do
      FeatureInclusion.should_receive(:find).with(:all).and_return([mock_feature_inclusion])
      get :index
      assigns[:feature_inclusions].should == [mock_feature_inclusion]
    end

    describe "with mime type of xml" do
  
      it "should render all feature_inclusions as xml" do
        request.env["HTTP_ACCEPT"] = "application/xml"
        FeatureInclusion.should_receive(:find).with(:all).and_return(feature_inclusions = mock("Array of FeatureInclusions"))
        feature_inclusions.should_receive(:to_xml).and_return("generated XML")
        get :index
        response.body.should == "generated XML"
      end
    
    end

  end

  describe "responding to GET show" do

    it "should expose the requested feature_inclusion as @feature_inclusion" do
      FeatureInclusion.should_receive(:find).with("37").and_return(mock_feature_inclusion)
      get :show, :id => "37"
      assigns[:feature_inclusion].should equal(mock_feature_inclusion)
    end
    
    describe "with mime type of xml" do

      it "should render the requested feature_inclusion as xml" do
        request.env["HTTP_ACCEPT"] = "application/xml"
        FeatureInclusion.should_receive(:find).with("37").and_return(mock_feature_inclusion)
        mock_feature_inclusion.should_receive(:to_xml).and_return("generated XML")
        get :show, :id => "37"
        response.body.should == "generated XML"
      end

    end
    
  end

  describe "responding to GET new" do
  
    it "should expose a new feature_inclusion as @feature_inclusion" do
      FeatureInclusion.should_receive(:new).and_return(mock_feature_inclusion)
      get :new
      assigns[:feature_inclusion].should equal(mock_feature_inclusion)
    end

  end

  describe "responding to GET edit" do
  
    it "should expose the requested feature_inclusion as @feature_inclusion" do
      FeatureInclusion.should_receive(:find).with("37").and_return(mock_feature_inclusion)
      get :edit, :id => "37"
      assigns[:feature_inclusion].should equal(mock_feature_inclusion)
    end

  end

  describe "responding to POST create" do

    describe "with valid params" do
      
      it "should expose a newly created feature_inclusion as @feature_inclusion" do
        FeatureInclusion.should_receive(:new).with({'these' => 'params'}).and_return(mock_feature_inclusion(:save => true))
        post :create, :feature_inclusion => {:these => 'params'}
        assigns(:feature_inclusion).should equal(mock_feature_inclusion)
      end

      it "should redirect to the created feature_inclusion" do
        FeatureInclusion.stub!(:new).and_return(mock_feature_inclusion(:save => true))
        post :create, :feature_inclusion => {}
        response.should redirect_to(feature_inclusion_url(mock_feature_inclusion))
      end
      
    end
    
    describe "with invalid params" do

      it "should expose a newly created but unsaved feature_inclusion as @feature_inclusion" do
        FeatureInclusion.stub!(:new).with({'these' => 'params'}).and_return(mock_feature_inclusion(:save => false))
        post :create, :feature_inclusion => {:these => 'params'}
        assigns(:feature_inclusion).should equal(mock_feature_inclusion)
      end

      it "should re-render the 'new' template" do
        FeatureInclusion.stub!(:new).and_return(mock_feature_inclusion(:save => false))
        post :create, :feature_inclusion => {}
        response.should render_template('new')
      end
      
    end
    
  end

  describe "responding to PUT udpate" do

    describe "with valid params" do

      it "should update the requested feature_inclusion" do
        FeatureInclusion.should_receive(:find).with("37").and_return(mock_feature_inclusion)
        mock_feature_inclusion.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :feature_inclusion => {:these => 'params'}
      end

      it "should expose the requested feature_inclusion as @feature_inclusion" do
        FeatureInclusion.stub!(:find).and_return(mock_feature_inclusion(:update_attributes => true))
        put :update, :id => "1"
        assigns(:feature_inclusion).should equal(mock_feature_inclusion)
      end

      it "should redirect to the feature_inclusion" do
        FeatureInclusion.stub!(:find).and_return(mock_feature_inclusion(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(feature_inclusion_url(mock_feature_inclusion))
      end

    end
    
    describe "with invalid params" do

      it "should update the requested feature_inclusion" do
        FeatureInclusion.should_receive(:find).with("37").and_return(mock_feature_inclusion)
        mock_feature_inclusion.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :feature_inclusion => {:these => 'params'}
      end

      it "should expose the feature_inclusion as @feature_inclusion" do
        FeatureInclusion.stub!(:find).and_return(mock_feature_inclusion(:update_attributes => false))
        put :update, :id => "1"
        assigns(:feature_inclusion).should equal(mock_feature_inclusion)
      end

      it "should re-render the 'edit' template" do
        FeatureInclusion.stub!(:find).and_return(mock_feature_inclusion(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end

    end

  end

  describe "responding to DELETE destroy" do

    it "should destroy the requested feature_inclusion" do
      FeatureInclusion.should_receive(:find).with("37").and_return(mock_feature_inclusion)
      mock_feature_inclusion.should_receive(:destroy)
      delete :destroy, :id => "37"
    end
  
    it "should redirect to the feature_inclusions list" do
      FeatureInclusion.stub!(:find).and_return(mock_feature_inclusion(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(feature_inclusions_url)
    end

  end

end
