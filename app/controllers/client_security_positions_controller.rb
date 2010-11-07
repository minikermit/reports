class ClientSecurityPositionsController < ApplicationController
		
  # GET /client_security_positions
  # GET /client_security_positions.xml
  def index
    @client_security_positions = ClientSecurityPosition.paginate(:page => params[:page], :order => 'Load_Date DESC')
  # ClientSecurityPosition.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @client_security_positions }
    end
  end

  # GET /client_security_positions/1
  # GET /client_security_positions/1.xml
  def show
    @client_security_position = ClientSecurityPosition.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @client_security_position }
    end
  end

  # GET /client_security_positions/new
  # GET /client_security_positions/new.xml
  def new
    @client_security_position = ClientSecurityPosition.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @client_security_position }
    end
  end

  # GET /client_security_positions/1/edit
  def edit
    @client_security_position = ClientSecurityPosition.find(params[:id])
  end

  # POST /client_security_positions
  # POST /client_security_positions.xml
  def create
    @client_security_position = ClientSecurityPosition.new(params[:client_security_position])

    respond_to do |format|
      if @client_security_position.save
        flash[:notice] = 'ClientSecurityPosition was successfully created.'
        format.html { redirect_to(@client_security_position) }
        format.xml  { render :xml => @client_security_position, :status => :created, :location => @client_security_position }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @client_security_position.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /client_security_positions/1
  # PUT /client_security_positions/1.xml
  def update
    @client_security_position = ClientSecurityPosition.find(params[:id])

    respond_to do |format|
      if @client_security_position.update_attributes(params[:client_security_position])
        flash[:notice] = 'ClientSecurityPosition was successfully updated.'
        format.html { redirect_to(@client_security_position) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @client_security_position.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /client_security_positions/1
  # DELETE /client_security_positions/1.xml
  def destroy
    @client_security_position = ClientSecurityPosition.find(params[:id])
    @client_security_position.destroy

    respond_to do |format|
      format.html { redirect_to(client_security_positions_url) }
      format.xml  { head :ok }
    end
  end
end
