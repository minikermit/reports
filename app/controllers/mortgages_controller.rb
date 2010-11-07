class MortgagesController < ApplicationController
  # GET /mortgages
  # GET /mortgages.xml
  def index
    @mortgages = Mortgage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mortgages }
    end
  end

  # GET /mortgages/1
  # GET /mortgages/1.xml
  def show
    @mortgage = Mortgage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mortgage }
    end
  end

  # GET /mortgages/new
  # GET /mortgages/new.xml
  def new
    @mortgage = Mortgage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mortgage }
    end
  end

  # GET /mortgages/1/edit
  def edit
    @mortgage = Mortgage.find(params[:id])
  end

  # POST /mortgages
  # POST /mortgages.xml
  def create
    @mortgage = Mortgage.new(params[:mortgage])

    respond_to do |format|
      if @mortgage.save
        flash[:notice] = 'Mortgage was successfully created.'
        format.html { redirect_to(@mortgage) }
        format.xml  { render :xml => @mortgage, :status => :created, :location => @mortgage }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mortgage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mortgages/1
  # PUT /mortgages/1.xml
  def update
    @mortgage = Mortgage.find(params[:id])

    respond_to do |format|
      if @mortgage.update_attributes(params[:mortgage])
        flash[:notice] = 'Mortgage was successfully updated.'
        format.html { redirect_to(@mortgage) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mortgage.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mortgages/1
  # DELETE /mortgages/1.xml
  def destroy
    @mortgage = Mortgage.find(params[:id])
    @mortgage.destroy

    respond_to do |format|
      format.html { redirect_to(mortgages_url) }
      format.xml  { head :ok }
    end
  end
end
