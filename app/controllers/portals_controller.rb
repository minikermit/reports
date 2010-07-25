class PortalsController < ApplicationController

  # This is to protect this model with restful-authentication
  # before_filter :login_required

  # GET /portals
  # GET /portals.xml
  def index
    @portals = Portal.find(:all)
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @portals }
    end
  end

  # GET /portals/1
  # GET /portals/1.xml
  def show
    @portal = Portal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @portal }
    end
  end

  # GET /portals/new
  # GET /portals/new.xml
  def new
    @portal = Portal.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @portal }
    end
  end

  # GET /portals/1/edit
  def edit
    @portal = Portal.find(params[:id])
  end

  # POST /portals
  # POST /portals.xml
  def create
    @portal = Portal.new(params[:portal])

    respond_to do |format|
      if @portal.save
        flash[:notice] = 'Portal was successfully created.'
        format.html { redirect_to(@portal) }
        format.xml  { render :xml => @portal, :status => :created, :location => @portal }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @portal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /portals/1
  # PUT /portals/1.xml
  def update
    @portal = Portal.find(params[:id])

    respond_to do |format|
      if @portal.update_attributes(params[:portal])
        flash[:notice] = 'Portal was successfully updated.'
        format.html { redirect_to(@portal) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @portal.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /portals/1
  # DELETE /portals/1.xml
  def destroy
    @portal = Portal.find(params[:id])
    @portal.destroy

    respond_to do |format|
      format.html { redirect_to(portals_url) }
      format.xml  { head :ok }
    end
  end
end
