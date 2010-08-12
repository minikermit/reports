class AccountPlansController < ApplicationController

#  autocomplete_for :account_plan, :account_id, :limit => 15, :order => 'created_at DESC'

  # GET /account_plans
  # GET /account_plans.xml
  def index
    @search = AccountPlan.search(params[:search])
    @account_plans = @search.all.paginate(:page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @account_plans }
    end
  end


  # GET /account_plans/1
  # GET /account_plans/1.xml
  def show
    @account_plan = AccountPlan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @account_plan }
    end
  end

  # GET /account_plans/new
  # GET /account_plans/new.xml
  def new
    @account_plan = AccountPlan.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @account_plan }
    end
  end

  # GET /account_plans/1/edit
  def edit
    @account_plan = AccountPlan.find(params[:id])
  end

  # POST /account_plans
  # POST /account_plans.xml
  def create
    @account_plan = AccountPlan.new(params[:account_plan])

    respond_to do |format|
      if @account_plan.save
        format.html { redirect_to(@account_plan, :notice => 'AccountPlan was successfully created.') }
        format.xml  { render :xml => @account_plan, :status => :created, :location => @account_plan }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @account_plan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /account_plans/1
  # PUT /account_plans/1.xml
  def update
    @account_plan = AccountPlan.find(params[:id])

    respond_to do |format|
      if @account_plan.update_attributes(params[:account_plan])
        format.html { redirect_to(@account_plan, :notice => 'AccountPlan was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @account_plan.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /account_plans/1
  # DELETE /account_plans/1.xml
  def destroy
    @account_plan = AccountPlan.find(params[:id])
    @account_plan.destroy

    respond_to do |format|
      format.html { redirect_to(account_plans_url) }
      format.xml  { head :ok }
    end
  end

end
