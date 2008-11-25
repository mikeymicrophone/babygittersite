require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe VersionUsesController do

  def mock_version_use(stubs={})
    @mock_version_use ||= mock_model(VersionUse, stubs)
  end
  
  describe "responding to GET index" do

    it "should expose all version_uses as @version_uses" do
      VersionUse.should_receive(:find).with(:all).and_return([mock_version_use])
      get :index
      assigns[:version_uses].should == [mock_version_use]
    end

    describe "with mime type of xml" do
  
      it "should render all version_uses as xml" do
        request.env["HTTP_ACCEPT"] = "application/xml"
        VersionUse.should_receive(:find).with(:all).and_return(version_uses = mock("Array of VersionUses"))
        version_uses.should_receive(:to_xml).and_return("generated XML")
        get :index
        response.body.should == "generated XML"
      end
    
    end

  end

  describe "responding to GET show" do

    it "should expose the requested version_use as @version_use" do
      VersionUse.should_receive(:find).with("37").and_return(mock_version_use)
      get :show, :id => "37"
      assigns[:version_use].should equal(mock_version_use)
    end
    
    describe "with mime type of xml" do

      it "should render the requested version_use as xml" do
        request.env["HTTP_ACCEPT"] = "application/xml"
        VersionUse.should_receive(:find).with("37").and_return(mock_version_use)
        mock_version_use.should_receive(:to_xml).and_return("generated XML")
        get :show, :id => "37"
        response.body.should == "generated XML"
      end

    end
    
  end

  describe "responding to GET new" do
  
    it "should expose a new version_use as @version_use" do
      VersionUse.should_receive(:new).and_return(mock_version_use)
      get :new
      assigns[:version_use].should equal(mock_version_use)
    end

  end

  describe "responding to GET edit" do
  
    it "should expose the requested version_use as @version_use" do
      VersionUse.should_receive(:find).with("37").and_return(mock_version_use)
      get :edit, :id => "37"
      assigns[:version_use].should equal(mock_version_use)
    end

  end

  describe "responding to POST create" do

    describe "with valid params" do
      
      it "should expose a newly created version_use as @version_use" do
        VersionUse.should_receive(:new).with({'these' => 'params'}).and_return(mock_version_use(:save => true))
        post :create, :version_use => {:these => 'params'}
        assigns(:version_use).should equal(mock_version_use)
      end

      it "should redirect to the created version_use" do
        VersionUse.stub!(:new).and_return(mock_version_use(:save => true))
        post :create, :version_use => {}
        response.should redirect_to(version_use_url(mock_version_use))
      end
      
    end
    
    describe "with invalid params" do

      it "should expose a newly created but unsaved version_use as @version_use" do
        VersionUse.stub!(:new).with({'these' => 'params'}).and_return(mock_version_use(:save => false))
        post :create, :version_use => {:these => 'params'}
        assigns(:version_use).should equal(mock_version_use)
      end

      it "should re-render the 'new' template" do
        VersionUse.stub!(:new).and_return(mock_version_use(:save => false))
        post :create, :version_use => {}
        response.should render_template('new')
      end
      
    end
    
  end

  describe "responding to PUT udpate" do

    describe "with valid params" do

      it "should update the requested version_use" do
        VersionUse.should_receive(:find).with("37").and_return(mock_version_use)
        mock_version_use.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :version_use => {:these => 'params'}
      end

      it "should expose the requested version_use as @version_use" do
        VersionUse.stub!(:find).and_return(mock_version_use(:update_attributes => true))
        put :update, :id => "1"
        assigns(:version_use).should equal(mock_version_use)
      end

      it "should redirect to the version_use" do
        VersionUse.stub!(:find).and_return(mock_version_use(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(version_use_url(mock_version_use))
      end

    end
    
    describe "with invalid params" do

      it "should update the requested version_use" do
        VersionUse.should_receive(:find).with("37").and_return(mock_version_use)
        mock_version_use.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :version_use => {:these => 'params'}
      end

      it "should expose the version_use as @version_use" do
        VersionUse.stub!(:find).and_return(mock_version_use(:update_attributes => false))
        put :update, :id => "1"
        assigns(:version_use).should equal(mock_version_use)
      end

      it "should re-render the 'edit' template" do
        VersionUse.stub!(:find).and_return(mock_version_use(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end

    end

  end

  describe "responding to DELETE destroy" do

    it "should destroy the requested version_use" do
      VersionUse.should_receive(:find).with("37").and_return(mock_version_use)
      mock_version_use.should_receive(:destroy)
      delete :destroy, :id => "37"
    end
  
    it "should redirect to the version_uses list" do
      VersionUse.stub!(:find).and_return(mock_version_use(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(version_uses_url)
    end

  end

end
