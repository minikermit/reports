class MortgagescollateralsController < ApplicationController
  # GET /mortgagescollaterals
  # GET /mortgagescollaterals.xml
  def index
    @mortgagescollaterals = Mortgagescollateral.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @mortgagescollaterals }
    end
  end

  # GET /mortgagescollaterals/1
  # GET /mortgagescollaterals/1.xml
  def show
    @mortgagescollateral = Mortgagescollateral.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mortgagescollateral }
    end
  end

  # GET /mortgagescollaterals/new
  # GET /mortgagescollaterals/new.xml
  def new
    @mortgagescollateral = Mortgagescollateral.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mortgagescollateral }
    end
  end

  # GET /mortgagescollaterals/1/edit
  def edit
    @mortgagescollateral = Mortgagescollateral.find(params[:id])
  end

  # POST /mortgagescollaterals
  # POST /mortgagescollaterals.xml
  def create
    @mortgagescollateral = Mortgagescollateral.new(params[:mortgagescollateral])

    respond_to do |format|
      if @mortgagescollateral.save
        flash[:notice] = 'Mortgagescollateral was successfully created.'
        format.html { redirect_to(@mortgagescollateral) }
        format.xml  { render :xml => @mortgagescollateral, :status => :created, :location => @mortgagescollateral }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @mortgagescollateral.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mortgagescollaterals/1
  # PUT /mortgagescollaterals/1.xml
  def update
    @mortgagescollateral = Mortgagescollateral.find(params[:id])

    respond_to do |format|
      if @mortgagescollateral.update_attributes(params[:mortgagescollateral])
        flash[:notice] = 'Mortgagescollateral was successfully updated.'
        format.html { redirect_to(@mortgagescollateral) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mortgagescollateral.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mortgagescollaterals/1
  # DELETE /mortgagescollaterals/1.xml
  def destroy
    @mortgagescollateral = Mortgagescollateral.find(params[:id])
    @mortgagescollateral.destroy

    respond_to do |format|
      format.html { redirect_to(mortgagescollaterals_url) }
      format.xml  { head :ok }
    end
  end
end
