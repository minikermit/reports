class CounterpartiesController < ApplicationController
  # GET /counterparties
  # GET /counterparties.xml
  def index
    
  	@search = Counterparty.search(params[:search])  
    @counterparties = @search.all.paginate(:page => params[:page])  
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @counterparties }
    end
  end

  # GET /counterparties/1
  # GET /counterparties/1.xml
  def show
    @counterparty = Counterparty.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @counterparty }
    end
  end

  # GET /counterparties/new
  # GET /counterparties/new.xml
  def new
    @counterparty = Counterparty.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @counterparty }
    end
  end

  # GET /counterparties/1/edit
  def edit
    @counterparty = Counterparty.find(params[:id])
  end

  # POST /counterparties
  # POST /counterparties.xml
  def create
    @counterparty = Counterparty.new(params[:counterparty])

    respond_to do |format|
      if @counterparty.save
        flash[:notice] = 'Counterparty was successfully created.'
        format.html { redirect_to(@counterparty) }
        format.xml  { render :xml => @counterparty, :status => :created, :location => @counterparty }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @counterparty.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /counterparties/1
  # PUT /counterparties/1.xml
  def update
    @counterparty = Counterparty.find(params[:id])

    respond_to do |format|
      if @counterparty.update_attributes(params[:counterparty])
        flash[:notice] = 'Counterparty was successfully updated.'
        format.html { redirect_to(@counterparty) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @counterparty.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /counterparties/1
  # DELETE /counterparties/1.xml
  def destroy
    @counterparty = Counterparty.find(params[:id])
    @counterparty.destroy

    respond_to do |format|
      format.html { redirect_to(counterparties_url) }
      format.xml  { head :ok }
    end
  end
end
