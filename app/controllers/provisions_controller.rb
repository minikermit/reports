class ProvisionsController < ApplicationController
  # GET /provisions
  # GET /provisions.xml
  def index
  	
  	@search = Provision.search(params[:search])  
    @provisions = @search.all.paginate(:page => params[:page])   

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @provisions }
    end
  end

  # GET /provisions/1
  # GET /provisions/1.xml
  def show
    @provision = Provision.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @provision }
    end
  end

  # GET /provisions/new
  # GET /provisions/new.xml
  def new
    @provision = Provision.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @provision }
    end
  end

  # GET /provisions/1/edit
  def edit
    @provision = Provision.find(params[:id])
  end

  # POST /provisions
  # POST /provisions.xml
  def create
    @provision = Provision.new(params[:provision])

    respond_to do |format|
      if @provision.save
        flash[:notice] = 'Provision was successfully created.'
        format.html { redirect_to(@provision) }
        format.xml  { render :xml => @provision, :status => :created, :location => @provision }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @provision.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /provisions/1
  # PUT /provisions/1.xml
  def update
    @provision = Provision.find(params[:id])

    respond_to do |format|
      if @provision.update_attributes(params[:provision])
        flash[:notice] = 'Provision was successfully updated.'
        format.html { redirect_to(@provision) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @provision.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /provisions/1
  # DELETE /provisions/1.xml
  def destroy
    @provision = Provision.find(params[:id])
    @provision.destroy

    respond_to do |format|
      format.html { redirect_to(provisions_url) }
      format.xml  { head :ok }
    end
  end
end
