class TasklistsController < ApplicationController

  before_filter :require_user, :only => [:edit, :update]
  before_filter :set_current_user

  def index
    @search = Tasklist.search(params[:search])
    @tasklists = @search.all.paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tasklists }
      format.pdf do
        @example_text = "some text"
                  render :pdf => "tasklists",
                         :template => 'tasklists/index.pdf.erb',
                         :layout => 'pdf',
                         :footer => {
                            :center => "Center",
                            :left => "Left",
                            :right => "Right"
                         }
      end
    end
  end

  def comment
    Tasklist.find(params[:id]).comments.create(params[:comment])
    flash[:notice] = "Added your comment"
    redirect_to :action => "show", :id => params[:id]
  end
  
  def show
    @tasklist = Tasklist.find(params[:id])
  end
  
  def new
    @tasklist = Tasklist.new
    @projects = Project.find(:all)
    @users = User.find(:all)
  end
  
  def create
    @users = User.find(:all)
    @projects = Project.find(:all)
    @tasklist = Tasklist.new(params[:tasklist])
    if @tasklist.save
      flash[:notice] = "Successfully created task."
      redirect_to @tasklist
    else
      render :action => 'new'
    end
  end
  
  def edit
    @users = User.find(:all)
    @tasklist = Tasklist.find(params[:id])
  end
  
  def update
    @users = User.find(:all)
    @projects = Project.find(:all)
    @tasklist = Tasklist.find(params[:id])
    #Tasklist.user_id = current_user.id
    if @tasklist.update_attributes(params[:tasklist])
      flash[:notice] = "Successfully updated task."
      redirect_to @tasklist
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @tasklist = Tasklist.find(params[:id])
    @tasklist.destroy
    flash[:notice] = "Successfully destroyed task."
    redirect_to tasklists_url
  end
end
