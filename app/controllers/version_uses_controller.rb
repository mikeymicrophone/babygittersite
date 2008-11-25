class VersionUsesController < ApplicationController
  # GET /version_uses
  # GET /version_uses.xml
  def index
    @version_uses = VersionUse.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @version_uses }
    end
  end

  # GET /version_uses/1
  # GET /version_uses/1.xml
  def show
    @version_use = VersionUse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @version_use }
    end
  end

  # GET /version_uses/new
  # GET /version_uses/new.xml
  def new
    @version_use = VersionUse.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @version_use }
    end
  end

  # GET /version_uses/1/edit
  def edit
    @version_use = VersionUse.find(params[:id])
  end

  # POST /version_uses
  # POST /version_uses.xml
  def create
    @version_use = VersionUse.new(params[:version_use])

    respond_to do |format|
      if @version_use.save
        flash[:notice] = 'VersionUse was successfully created.'
        format.html { redirect_to(@version_use) }
        format.xml  { render :xml => @version_use, :status => :created, :location => @version_use }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @version_use.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /version_uses/1
  # PUT /version_uses/1.xml
  def update
    @version_use = VersionUse.find(params[:id])

    respond_to do |format|
      if @version_use.update_attributes(params[:version_use])
        flash[:notice] = 'VersionUse was successfully updated.'
        format.html { redirect_to(@version_use) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @version_use.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /version_uses/1
  # DELETE /version_uses/1.xml
  def destroy
    @version_use = VersionUse.find(params[:id])
    @version_use.destroy

    respond_to do |format|
      format.html { redirect_to(version_uses_url) }
      format.xml  { head :ok }
    end
  end
end
