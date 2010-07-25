class LoanbooksController < ApplicationController
  # GET /loanbooks
  # GET /loanbooks.xml
  def index
  	
  	@search = Loanbook.search(params[:search])  
    @loanbooks = @search.all.paginate(:page => params[:page])  

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @loanbooks }
    end
  end

  # GET /loanbooks/1
  # GET /loanbooks/1.xml
  def show
    @loanbook = Loanbook.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @loanbook }
    end
  end

  # GET /loanbooks/new
  # GET /loanbooks/new.xml
  def new
    @loanbook = Loanbook.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @loanbook }
    end
  end

  # GET /loanbooks/1/edit
  def edit
    @loanbook = Loanbook.find(params[:id])
  end

  # POST /loanbooks
  # POST /loanbooks.xml
  def create
    @loanbook = Loanbook.new(params[:loanbook])

    respond_to do |format|
      if @loanbook.save
        flash[:notice] = 'Loanbook was successfully created.'
        format.html { redirect_to(@loanbook) }
        format.xml  { render :xml => @loanbook, :status => :created, :location => @loanbook }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @loanbook.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /loanbooks/1
  # PUT /loanbooks/1.xml
  def update
    @loanbook = Loanbook.find(params[:id])

    respond_to do |format|
      if @loanbook.update_attributes(params[:loanbook])
        flash[:notice] = 'Loanbook was successfully updated.'
        format.html { redirect_to(@loanbook) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @loanbook.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /loanbooks/1
  # DELETE /loanbooks/1.xml
  def destroy
    @loanbook = Loanbook.find(params[:id])
    @loanbook.destroy

    respond_to do |format|
      format.html { redirect_to(loanbooks_url) }
      format.xml  { head :ok }
    end
  end
end
