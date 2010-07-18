class DimDatesController < ApplicationController
  # GET /dim_dates
  # GET /dim_dates.xml
  def index
    @dim_dates = DimDate.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dim_dates }
    end
  end

  # GET /dim_dates/1
  # GET /dim_dates/1.xml
  def show
    @dim_date = DimDate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @dim_date }
    end
  end

  # GET /dim_dates/new
  # GET /dim_dates/new.xml
  def new
    @dim_date = DimDate.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @dim_date }
    end
  end

  # GET /dim_dates/1/edit
  def edit
    @dim_date = DimDate.find(params[:id])
  end

  # POST /dim_dates
  # POST /dim_dates.xml
  def create
    @dim_date = DimDate.new(params[:dim_date])

    respond_to do |format|
      if @dim_date.save
        flash[:notice] = 'DimDate was successfully created.'
        format.html { redirect_to(@dim_date) }
        format.xml  { render :xml => @dim_date, :status => :created, :location => @dim_date }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @dim_date.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dim_dates/1
  # PUT /dim_dates/1.xml
  def update
    @dim_date = DimDate.find(params[:id])

    respond_to do |format|
      if @dim_date.update_attributes(params[:dim_date])
        flash[:notice] = 'DimDate was successfully updated.'
        format.html { redirect_to(@dim_date) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @dim_date.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dim_dates/1
  # DELETE /dim_dates/1.xml
  def destroy
    @dim_date = DimDate.find(params[:id])
    @dim_date.destroy

    respond_to do |format|
      format.html { redirect_to(dim_dates_url) }
      format.xml  { head :ok }
    end
  end
end
