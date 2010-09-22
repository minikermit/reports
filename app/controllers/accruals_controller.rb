class AccrualsController < ApplicationController

  layout :choose_layout


  # GET /accruals
  # GET /accruals.xml
  def index
    @accruals = Accrual.all(:order => :event_date)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @accruals }
    end
  end

  # GET /accruals/1
  # GET /accruals/1.xml
  def show
    @accrual = Accrual.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @accrual }
    end
  end

  # GET /accruals/new
  # GET /accruals/new.xml
  def new
    @accrual = Accrual.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @accrual }
    end
  end

  # GET /accruals/1/edit
  def edit
    @accrual = Accrual.find(params[:id])
  end

  # POST /accruals
  # POST /accruals.xml
  def create
    @accrual = Accrual.new(params[:accrual])

    respond_to do |format|
      if @accrual.save
        format.html { redirect_to(@accrual, :notice => 'Accrual was successfully created.') }
        format.xml  { render :xml => @accrual, :status => :created, :location => @accrual }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @accrual.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /accruals/1
  # PUT /accruals/1.xml
  def update
    @accrual = Accrual.find(params[:id])

    respond_to do |format|
      if @accrual.update_attributes(params[:accrual])
        format.html { redirect_to(@accrual, :notice => 'Accrual was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @accrual.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /accruals/1
  # DELETE /accruals/1.xml
  def destroy
    @accrual = Accrual.find(params[:id])
    @accrual.destroy

    respond_to do |format|
      format.html { redirect_to(accruals_url) }
      format.xml  { head :ok }
    end
  end

  private

  def choose_layout
    if [ 'new', 'edit' ].include? action_name
      'accruals'
    else
      'tasklists'
    end
  end

end
