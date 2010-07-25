class FdbclisController < ApplicationController
  # GET /fdbclis
  # GET /fdbclis.xml
  def index

    @search = Fdbcli.search(params[:search])  
    @fdbclis = @search.all.paginate(:page => params[:page])  

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fdbclis }
    end
  end

  # GET /fdbclis/1
  # GET /fdbclis/1.xml
  def show
    @fdbcli = Fdbcli.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fdbcli }
    end
  end

  # GET /fdbclis/new
  # GET /fdbclis/new.xml
  def new
    @fdbcli = Fdbcli.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fdbcli }
    end
  end

  # GET /fdbclis/1/edit
  def edit
    @fdbcli = Fdbcli.find(params[:id])
  end

  # POST /fdbclis
  # POST /fdbclis.xml
  def create
    @fdbcli = Fdbcli.new(params[:fdbcli])

    respond_to do |format|
      if @fdbcli.save
        flash[:notice] = 'Fdbcli was successfully created.'
        format.html { redirect_to(@fdbcli) }
        format.xml  { render :xml => @fdbcli, :status => :created, :location => @fdbcli }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @fdbcli.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /fdbclis/1
  # PUT /fdbclis/1.xml
  def update
    @fdbcli = Fdbcli.find(params[:id])

    respond_to do |format|
      if @fdbcli.update_attributes(params[:fdbcli])
        flash[:notice] = 'Fdbcli was successfully updated.'
        format.html { redirect_to(@fdbcli) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fdbcli.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fdbclis/1
  # DELETE /fdbclis/1.xml
  def destroy
    @fdbcli = Fdbcli.find(params[:id])
    @fdbcli.destroy

    respond_to do |format|
      format.html { redirect_to(fdbclis_url) }
      format.xml  { head :ok }
    end
  end
end
