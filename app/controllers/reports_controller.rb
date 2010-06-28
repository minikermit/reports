class ReportsController < ApplicationController
  # GET /reports
  # GET /reports.xml 
  def index
    @search = Report.order.search(params[:search])
    @reports = @search.all.paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @reports }        
    end
  end


  def report_line
    Report.find(params[:id]).report_lines.create(params[:report_line])
    flash[:notice] = "Added your new report line"
    redirect_to :action => "show", :id => params[:id]
  end

  def prioritize_report_lines
  report = Report.find(params[:id])
  report_lines = report.report_lines
  report_lines.each do |report_line|
    report_line.position = params['report_line'].index(report_line.id.to_s) + 1
    report_line.save
  end
    render :nothing => true
  end


  # GET /reports/1
  # GET /reports/1.xml
  def show
    @report = Report.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @report }
    end
  end

  # GET /reports/new
  # GET /reports/new.xml
  def new
    @report = Report.new
    @report_categories = ReportCategory.find(:all)
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @report }
    end
  end

  # GET /reports/1/edit
  def edit
    @report = Report.find(params[:id])
    @report_categories = ReportCategory.find(:all)
  end

  # POST /reports
  # POST /reports.xml
  def create
    @report = Report.new(params[:report])

    respond_to do |format|
      if @report.save
        format.html { redirect_to(@report, :notice => 'Report was successfully created.') }
        format.xml  { render :xml => @report, :status => :created, :location => @report }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @report.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /reports/1
  # PUT /reports/1.xml
  def update
    @report = Report.find(params[:id])

    respond_to do |format|
      if @report.update_attributes(params[:report])
        format.html { redirect_to(@report, :notice => 'Report was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @report.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /reports/1
  # DELETE /reports/1.xml
  def destroy
    @report = Report.find(params[:id])
    @report.destroy

    respond_to do |format|
      format.html { redirect_to(reports_url) }
      format.xml  { head :ok }
    end
  end
end
