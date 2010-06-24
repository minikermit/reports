class ReportLinesController < ApplicationController

  # GET /report_lines
  # GET /report_lines.xml
  def index
    @search = ReportLine.search(params[:search])
    @report_lines = @search.all.paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @report_lines }
    end
  end


  def structure
    ReportLine.find(params[:id]).structures.create(params[:structure])
    flash[:notice] = "Added your new account mapping to the line"
    redirect_to :action => "show", :id => params[:id]
  end


  # GET /report_lines/1
  # GET /report_lines/1.xml
  def show
    @report_line = ReportLine.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @report_line }
    end
  end

  # GET /report_lines/new
  # GET /report_lines/new.xml
  def new
    @report_line = ReportLine.new
    @reports = Report.find(:all)
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @report_line }
    end
  end

  # GET /report_lines/1/edit
  def edit
    @report_line = ReportLine.find(params[:id])
    @reports = Report.find(:all)
  end

  # POST /report_lines
  # POST /report_lines.xml
  def create
    @report_line = ReportLine.new(params[:report_line])

    respond_to do |format|
      if @report_line.save
        format.html { redirect_to(@report_line, :notice => 'ReportLine was successfully created.') }
        format.xml  { render :xml => @report_line, :status => :created, :location => @report_line }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @report_line.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /report_lines/1
  # PUT /report_lines/1.xml
  def update
    @report_line = ReportLine.find(params[:id])

    respond_to do |format|
      if @report_line.update_attributes(params[:report_line])
        format.html { redirect_to(@report_line, :notice => 'ReportLine was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @report_line.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /report_lines/1
  # DELETE /report_lines/1.xml
  def destroy
    @report_line = ReportLine.find(params[:id])
    @report_line.destroy

    respond_to do |format|
      format.html { redirect_to(report_lines_url) }
      format.xml  { head :ok }
    end
  end
end
