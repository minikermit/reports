class ReportCategoriesController < ApplicationController
  # GET /report_categories
  # GET /report_categories.xml
  def index
    @search = ReportCategory.search(params[:search])
    @report_categories = @search.all.paginate(:page => params[:page])
    
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
    notice "Hooray! You did something good."
    warning "Uhm, You're not allowed to do that yet."
    error "Ooooops! Something went wrong."

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


  def prioritize_reports
  report_category = ReportCategory.find(params[:id])
  reports = report_category.reports
  reports.each do |report|
    report.position = params['report'].index(report.id.to_s) + 1
    report.save
  end
    render :nothing => true
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




