class InspectionPeriodsController < ApplicationController
  # GET /inspection_periods
  # GET /inspection_periods.xml
  def index
    @inspection_periods = InspectionPeriod.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @inspection_periods }
    end
  end

  # GET /inspection_periods/1
  # GET /inspection_periods/1.xml
  def show
    @inspection_period = InspectionPeriod.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @inspection_period }
    end
  end

  # GET /inspection_periods/new
  # GET /inspection_periods/new.xml
  def new
    @inspection_period = InspectionPeriod.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @inspection_period }
    end
  end

  # GET /inspection_periods/1/edit
  def edit
    @inspection_period = InspectionPeriod.find(params[:id])
  end

  # POST /inspection_periods
  # POST /inspection_periods.xml
  def create
    @inspection_period = InspectionPeriod.new(params[:inspection_period])

    respond_to do |format|
      if @inspection_period.save
        flash[:notice] = 'InspectionPeriod was successfully created.'
        format.html { redirect_to(@inspection_period) }
        format.xml  { render :xml => @inspection_period, :status => :created, :location => @inspection_period }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @inspection_period.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /inspection_periods/1
  # PUT /inspection_periods/1.xml
  def update
    @inspection_period = InspectionPeriod.find(params[:id])

    respond_to do |format|
      if @inspection_period.update_attributes(params[:inspection_period])
        flash[:notice] = 'InspectionPeriod was successfully updated.'
        format.html { redirect_to(@inspection_period) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @inspection_period.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /inspection_periods/1
  # DELETE /inspection_periods/1.xml
  def destroy
    @inspection_period = InspectionPeriod.find(params[:id])
    @inspection_period.destroy

    respond_to do |format|
      format.html { redirect_to(inspection_periods_url) }
      format.xml  { head :ok }
    end
  end
end
