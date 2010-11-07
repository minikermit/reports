class TimebandsController < ApplicationController
  # GET /timebands
  # GET /timebands.xml
  def index
    @timebands = Timeband.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @timebands }
    end
  end

  # GET /timebands/1
  # GET /timebands/1.xml
  def show
    @timeband = Timeband.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @timeband }
    end
  end

  # GET /timebands/new
  # GET /timebands/new.xml
  def new
    @timeband = Timeband.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @timeband }
    end
  end

  # GET /timebands/1/edit
  def edit
    @timeband = Timeband.find(params[:id])
  end

  # POST /timebands
  # POST /timebands.xml
  def create
    @timeband = Timeband.new(params[:timeband])

    respond_to do |format|
      if @timeband.save
        flash[:notice] = 'Timeband was successfully created.'
        format.html { redirect_to(@timeband) }
        format.xml  { render :xml => @timeband, :status => :created, :location => @timeband }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @timeband.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /timebands/1
  # PUT /timebands/1.xml
  def update
    @timeband = Timeband.find(params[:id])

    respond_to do |format|
      if @timeband.update_attributes(params[:timeband])
        flash[:notice] = 'Timeband was successfully updated.'
        format.html { redirect_to(@timeband) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @timeband.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /timebands/1
  # DELETE /timebands/1.xml
  def destroy
    @timeband = Timeband.find(params[:id])
    @timeband.destroy

    respond_to do |format|
      format.html { redirect_to(timebands_url) }
      format.xml  { head :ok }
    end
  end
end
