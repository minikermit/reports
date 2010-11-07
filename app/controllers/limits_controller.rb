class LimitsController < ApplicationController
  # GET /limits
  # GET /limits.xml
  def index
  	
  	@search = Limit.search(params[:search])  
    @limits = @search.all.paginate(:page => params[:page])  

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @limits }
    end
  end

  # GET /limits/1
  # GET /limits/1.xml
  def show
    @limit = Limit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @limit }
    end
  end

  # GET /limits/new
  # GET /limits/new.xml
  def new
    @limit = Limit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @limit }
    end
  end

  # GET /limits/1/edit
  def edit
    @limit = Limit.find(params[:id])
  end

  # POST /limits
  # POST /limits.xml
  def create
    @limit = Limit.new(params[:limit])

    respond_to do |format|
      if @limit.save
        flash[:notice] = 'Limit was successfully created.'
        format.html { redirect_to(@limit) }
        format.xml  { render :xml => @limit, :status => :created, :location => @limit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @limit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /limits/1
  # PUT /limits/1.xml
  def update
    @limit = Limit.find(params[:id])

    respond_to do |format|
      if @limit.update_attributes(params[:limit])
        flash[:notice] = 'Limit was successfully updated.'
        format.html { redirect_to(@limit) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @limit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /limits/1
  # DELETE /limits/1.xml
  def destroy
    @limit = Limit.find(params[:id])
    @limit.destroy

    respond_to do |format|
      format.html { redirect_to(limits_url) }
      format.xml  { head :ok }
    end
  end
end
