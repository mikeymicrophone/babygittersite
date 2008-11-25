class FeatureInclusionsController < ApplicationController
  # GET /feature_inclusions
  # GET /feature_inclusions.xml
  def index
    @feature_inclusions = FeatureInclusion.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @feature_inclusions }
    end
  end

  # GET /feature_inclusions/1
  # GET /feature_inclusions/1.xml
  def show
    @feature_inclusion = FeatureInclusion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @feature_inclusion }
    end
  end

  # GET /feature_inclusions/new
  # GET /feature_inclusions/new.xml
  def new
    @feature_inclusion = FeatureInclusion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @feature_inclusion }
    end
  end

  # GET /feature_inclusions/1/edit
  def edit
    @feature_inclusion = FeatureInclusion.find(params[:id])
  end

  # POST /feature_inclusions
  # POST /feature_inclusions.xml
  def create
    @feature_inclusion = FeatureInclusion.new(params[:feature_inclusion])

    respond_to do |format|
      if @feature_inclusion.save
        flash[:notice] = 'FeatureInclusion was successfully created.'
        format.html { redirect_to(@feature_inclusion) }
        format.xml  { render :xml => @feature_inclusion, :status => :created, :location => @feature_inclusion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @feature_inclusion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /feature_inclusions/1
  # PUT /feature_inclusions/1.xml
  def update
    @feature_inclusion = FeatureInclusion.find(params[:id])

    respond_to do |format|
      if @feature_inclusion.update_attributes(params[:feature_inclusion])
        flash[:notice] = 'FeatureInclusion was successfully updated.'
        format.html { redirect_to(@feature_inclusion) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @feature_inclusion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /feature_inclusions/1
  # DELETE /feature_inclusions/1.xml
  def destroy
    @feature_inclusion = FeatureInclusion.find(params[:id])
    @feature_inclusion.destroy

    respond_to do |format|
      format.html { redirect_to(feature_inclusions_url) }
      format.xml  { head :ok }
    end
  end
end
