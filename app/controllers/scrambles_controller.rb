class ScramblesController < ApplicationController
  # GET /scrambles
  # GET /scrambles.xml
  def index
    @scrambles = Scramble.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @scrambles }
    end
  end

  # GET /scrambles/1
  # GET /scrambles/1.xml
  def show
    @scramble = Scramble.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @scramble }
    end
  end

  # GET /scrambles/new
  # GET /scrambles/new.xml
  def new
    @scramble = Scramble.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @scramble }
    end
  end

  # GET /scrambles/1/edit
  def edit
    @scramble = Scramble.find(params[:id])
  end

  # POST /scrambles
  # POST /scrambles.xml
  def create
    @scramble = Scramble.new(params[:scramble])

    respond_to do |format|
      if @scramble.save
        flash[:notice] = 'Scramble was successfully created.'
        format.html { redirect_to(@scramble) }
        format.xml  { render :xml => @scramble, :status => :created, :location => @scramble }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @scramble.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /scrambles/1
  # PUT /scrambles/1.xml
  def update
    @scramble = Scramble.find(params[:id])

    respond_to do |format|
      if @scramble.update_attributes(params[:scramble])
        flash[:notice] = 'Scramble was successfully updated.'
        format.html { redirect_to(@scramble) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @scramble.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /scrambles/1
  # DELETE /scrambles/1.xml
  def destroy
    @scramble = Scramble.find(params[:id])
    @scramble.destroy

    respond_to do |format|
      format.html { redirect_to(scrambles_url) }
      format.xml  { head :ok }
    end
  end
end
