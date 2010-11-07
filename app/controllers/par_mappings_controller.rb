class ParMappingsController < ApplicationController
  # GET /par_mappings
  # GET /par_mappings.xml
  def index

    @par_mappings = ParMapping.valid.paginate(:page => params[:page], :conditions => ["information_mapped = ?", params[:search]], :order => 'created_at DESC')
      
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @par_mappings }
    end
  end

  # GET /par_mappings/1
  # GET /par_mappings/1.xml
  def show
    @par_mapping = ParMapping.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @par_mapping }
    end
  end

  # GET /par_mappings/new
  # GET /par_mappings/new.xml
  def new
    @par_mapping = ParMapping.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @par_mapping }
    end
  end

  # GET /par_mappings/1/edit
  def edit
    @par_mapping = ParMapping.find(params[:id])
  end

  # POST /par_mappings
  # POST /par_mappings.xml
  def create
    @par_mapping = ParMapping.new(params[:par_mapping])

    respond_to do |format|
      if @par_mapping.save
        flash[:notice] = 'Your parameter was successfully created.'
        format.html { redirect_to(@par_mapping) }
        format.xml  { render :xml => @par_mapping, :status => :created, :location => @par_mapping }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @par_mapping.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /par_mappings/1
  # PUT /par_mappings/1.xml
  def update
    @par_mapping = ParMapping.find(params[:id])

    respond_to do |format|
      if @par_mapping.update_attributes(params[:par_mapping])
        flash[:notice] = 'The parameter was successfully updated.'
        format.html { redirect_to(@par_mapping) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @par_mapping.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /par_mappings/1
  # DELETE /par_mappings/1.xml
  def destroy
    @par_mapping = ParMapping.find(params[:id])
    @par_mapping.destroy

    respond_to do |format|
      format.html { redirect_to(par_mappings_url) }
      format.xml  { head :ok }
    end
  end
end
