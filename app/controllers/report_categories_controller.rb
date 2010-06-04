class ReportCategoriesController < ApplicationController
  # GET /report_categories
  # GET /report_categories.xml
  def index
    @report_categories = ReportCategory.all(:order => 'name')

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @report_categories }
    end
  end

  def report
    ReportCategory.find(params[:id]).reports.create(params[:report])
    flash[:notice] = "Added your report"
    redirect_to :action => "show", :id => params[:id]
  end

  # GET /report_categories/1
  # GET /report_categories/1.xml
  def show
    @report_category = ReportCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @report_category }
    end
  end

  # GET /report_categories/new
  # GET /report_categories/new.xml
  def new
    @report_category = ReportCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @report_category }
    end
  end

  # GET /report_categories/1/edit
  def edit
    @report_category = ReportCategory.find(params[:id])
  end

  # POST /report_categories
  # POST /report_categories.xml
  def create
    @report_category = ReportCategory.new(params[:report_category])

    respond_to do |format|
      if @report_category.save
        format.html { redirect_to(@report_category, :notice => 'ReportCategory was successfully created.') }
        format.xml  { render :xml => @report_category, :status => :created, :location => @report_category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @report_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /report_categories/1
  # PUT /report_categories/1.xml
  def update
    @report_category = ReportCategory.find(params[:id])

    respond_to do |format|
      if @report_category.update_attributes(params[:report_category])
        format.html { redirect_to(@report_category, :notice => 'ReportCategory was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @report_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /report_categories/1
  # DELETE /report_categories/1.xml
  def destroy
    @report_category = ReportCategory.find(params[:id])
    @report_category.destroy

    respond_to do |format|
      format.html { redirect_to(report_categories_url) }
      format.xml  { head :ok }
    end
  end
end
