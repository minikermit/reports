class DepreciationsController < ApplicationController
  # GET /depreciations
  # GET /depreciations.xml
  def index
    @depreciations = Depreciation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @depreciations }
    end
  end

  # GET /depreciations/1
  # GET /depreciations/1.xml
  def show
    @depreciation = Depreciation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @depreciation }
    end
  end

  # GET /depreciations/new
  # GET /depreciations/new.xml
  def new
    @depreciation = Depreciation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @depreciation }
    end
  end

  # GET /depreciations/1/edit
  def edit
    @depreciation = Depreciation.find(params[:id])
  end

  # POST /depreciations
  # POST /depreciations.xml
  def create
    @depreciation = Depreciation.new(params[:depreciation])

    respond_to do |format|
      if @depreciation.save
        format.html { redirect_to(@depreciation, :notice => 'Depreciation was successfully created.') }
        format.xml  { render :xml => @depreciation, :status => :created, :location => @depreciation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @depreciation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /depreciations/1
  # PUT /depreciations/1.xml
  def update
    @depreciation = Depreciation.find(params[:id])

    respond_to do |format|
      if @depreciation.update_attributes(params[:depreciation])
        format.html { redirect_to(@depreciation, :notice => 'Depreciation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @depreciation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /depreciations/1
  # DELETE /depreciations/1.xml
  def destroy
    @depreciation = Depreciation.find(params[:id])
    @depreciation.destroy

    respond_to do |format|
      format.html { redirect_to(depreciations_url) }
      format.xml  { head :ok }
    end
  end
end
