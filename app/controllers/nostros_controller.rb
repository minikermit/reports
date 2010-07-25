class NostrosController < ApplicationController
  # GET /nostros
  # GET /nostros.xml
  def index
  	
  	@search = Nostro.search(params[:search])  
    @nostros = @search.all.paginate(:page => params[:page])  

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @nostros }
    end
  end

  # GET /nostros/1
  # GET /nostros/1.xml
  def show
    @nostro = Nostro.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @nostro }
    end
  end

  # GET /nostros/new
  # GET /nostros/new.xml
  def new
    @nostro = Nostro.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @nostro }
    end
  end

  # GET /nostros/1/edit
  def edit
    @nostro = Nostro.find(params[:id])
  end

  # POST /nostros
  # POST /nostros.xml
  def create
    @nostro = Nostro.new(params[:nostro])

    respond_to do |format|
      if @nostro.save
        flash[:notice] = 'Nostro was successfully created.'
        format.html { redirect_to(@nostro) }
        format.xml  { render :xml => @nostro, :status => :created, :location => @nostro }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @nostro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /nostros/1
  # PUT /nostros/1.xml
  def update
    @nostro = Nostro.find(params[:id])

    respond_to do |format|
      if @nostro.update_attributes(params[:nostro])
        flash[:notice] = 'Nostro was successfully updated.'
        format.html { redirect_to(@nostro) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @nostro.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /nostros/1
  # DELETE /nostros/1.xml
  def destroy
    @nostro = Nostro.find(params[:id])
    @nostro.destroy

    respond_to do |format|
      format.html { redirect_to(nostros_url) }
      format.xml  { head :ok }
    end
  end
end
