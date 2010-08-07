class ValidationrulesController < ApplicationController
  # GET /validationrules
  # GET /validationrules.xml
  
   # before_filter :login_required
  
  def index
    
  	@search = Validationrule.search(params[:search])  
    @validationrules = @search.all.paginate(:page => params[:page])   
 
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @validationrules }
    end
  end

  # GET /validationrules/1
  # GET /validationrules/1.xml
  def show
    
  	@validationrule = Validationrule.find(params[:id])

	#render(:layout => "layouts/applicationnaked")

    respond_to do |format|
      format.html {render(:layout => "layouts/applicationnaked") }
      format.xml  { render :xml => @validationrule }
    end
  end

  # GET /validationrules/new
  # GET /validationrules/new.xml
  def new
    @validationrule = Validationrule.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @validationrule }
    end
  end

  # GET /validationrules/1/edit
  def edit
    @validationrule = Validationrule.find(params[:id])
  end

  # POST /validationrules
  # POST /validationrules.xml
  def create
    @validationrule = Validationrule.new(params[:validationrule])

    respond_to do |format|
      if @validationrule.save
        flash[:notice] = 'Validationrule was successfully created.'
        format.html { redirect_to(@validationrule) }
        format.xml  { render :xml => @validationrule, :status => :created, :location => @validationrule }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @validationrule.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /validationrules/1
  # PUT /validationrules/1.xml
  def update
    @validationrule = Validationrule.find(params[:id])

    respond_to do |format|
      if @validationrule.update_attributes(params[:validationrule])
        flash[:notice] = 'Validationrule was successfully updated.'
        format.html { redirect_to(@validationrule) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @validationrule.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /validationrules/1
  # DELETE /validationrules/1.xml
  def destroy
    @validationrule = Validationrule.find(params[:id])
    @validationrule.destroy

    respond_to do |format|
      format.html { redirect_to(validationrules_url) }
      format.xml  { head :ok }
    end
  end
end
