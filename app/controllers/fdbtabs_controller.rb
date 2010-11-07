class FdbtabsController < ApplicationController

  # before_filter :login_required
       
  # filter_resource_access

  # GET /fdbtabs
  # GET /fdbtabs.xml
    
  def index
  	
    @search = Fdbtab.search(params[:search])  
    @fdbtabs = @search.all.paginate(:page => params[:page])  
   
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fdbtabs }
      format.csv { render :csv => @fdbtabs }
    end
  end

  # GET /fdbtabs/1
  # GET /fdbtabs/1.xml
  def show
    @fdbtab = Fdbtab.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fdbtab }
    end
  end

  # GET /fdbtabs/new
  # GET /fdbtabs/new.xml
  def new
    @fdbtab = Fdbtab.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fdbtab }
    end
  end

  # GET /fdbtabs/1/edit
  def edit
    @fdbtab = Fdbtab.find(params[:id])
  end

  # POST /fdbtabs
  # POST /fdbtabs.xml
  def create
    @fdbtab = Fdbtab.new(params[:fdbtab])

    respond_to do |format|
      if @fdbtab.save
        flash[:notice] = 'Fdbtab was successfully created.'
        format.html { redirect_to(@fdbtab) }
        format.xml  { render :xml => @fdbtab, :status => :created, :location => @fdbtab }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @fdbtab.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /fdbtabs/1
  # PUT /fdbtabs/1.xml
  def update
    @fdbtab = Fdbtab.find(params[:id])

    respond_to do |format|
      if @fdbtab.update_attributes(params[:fdbtab])
        flash[:notice] = 'Fdbtab was successfully updated.'
        format.html { redirect_to(@fdbtab) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fdbtab.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fdbtabs/1
  # DELETE /fdbtabs/1.xml
  def destroy
    @fdbtab = Fdbtab.find(params[:id])
    @fdbtab.destroy

    respond_to do |format|
      format.html { redirect_to(fdbtabs_url) }
      format.xml  { head :ok }
    end
  end
end
