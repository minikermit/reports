class B2TaMappingsController < ApplicationController
 # GET /par_mappings
  # GET /par_mappings.xml
  def index

    @b2_ta_mappings = B2TaMapping.valid.paginate(:page => params[:page], :conditions => ["information_mapped = ?", params[:search]], :order => 'created_at DESC')
      
    
 
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @b2_ta_mappings }
    end
  end


  # GET /b2_ta_mappings/1
  # GET /b2_ta_mappings/1.xml
  def show
    @b2_ta_mappings = B2TaMapping.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @b2_ta_mappings }
    end
  end
  
  
  # GET /b2_ta_mappings/new
  # GET /b2_ta_mappings/new.xml
  def new
    @b2_ta_mappings = B2TaMapping.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @b2_ta_mappings }
    end
  end

  # GET /b2_ta_mappings/1/edit
  def edit
    @b2_ta_mappings = B2TaMapping.find(params[:id])
  end

  # POST /b2_ta_mappings
  # POST /b2_ta_mappings.xml
  def create
    @b2_ta_mappings = B2TaMapping.new(params[:b2_ta_mapping])

    respond_to do |format|
      if @b2_ta_mappings.save
        flash[:notice] = 'Mapping for Basel II was successfully created.'
        format.html { redirect_to(@b2_ta_mappings) }
        format.xml  { render :xml => @b2_ta_mappings, :status => :created, :location => @b2_ta_mappings }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @b2_ta_mappings.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /b2_ta_mappings/1
  # PUT /b2_ta_mappings/1.xml
  def update
    @b2_ta_mappings = B2TaMapping.find(params[:id])

    respond_to do |format|
      if @b2_ta_mappings.update_attributes(params[:par_mapping])
        flash[:notice] = 'Mapping for Basel II was successfully updated.'
        format.html { redirect_to(@b2_ta_mappings) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @b2_ta_mappings.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  # DELETE /b2_ta_mappings/1
  # DELETE /b2_ta_mappings/1.xml
  def destroy
    @b2_ta_mappings = B2TaMapping.find(params[:id])
    @b2_ta_mappings.destroy

    respond_to do |format|
      format.html { redirect_to(b2_ta_mappings_url) }
      format.xml  { head :ok }
    end
  end

end 

=begin 	
    @b2_ta_mappings = B2TaMapping.informationmapped.paginate(:page => params[:page], :informationmapped => params[:informationmapped], :order => 'created_at DESC')
=end
