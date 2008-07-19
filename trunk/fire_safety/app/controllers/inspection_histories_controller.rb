class InspectionHistoriesController < ApplicationController
  # GET /inspection_histories
  # GET /inspection_histories.xml
  def index
    @inspection_histories = InspectionHistory.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @inspection_histories }
    end
  end

  # GET /inspection_histories/1
  # GET /inspection_histories/1.xml
  def show
    @inspection_history = InspectionHistory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @inspection_history }
    end
  end

  # GET /inspection_histories/new
  # GET /inspection_histories/new.xml
  def new
    @inspection_history = InspectionHistory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @inspection_history }
    end
  end

  # GET /inspection_histories/1/edit
  def edit
    @inspection_history = InspectionHistory.find(params[:id])
  end

  # POST /inspection_histories
  # POST /inspection_histories.xml
  def create
    @inspection_history = InspectionHistory.new(params[:inspection_history])

    respond_to do |format|
      if @inspection_history.save
        flash[:notice] = 'InspectionHistory was successfully created.'
        format.html { redirect_to(@inspection_history) }
        format.xml  { render :xml => @inspection_history, :status => :created, :location => @inspection_history }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @inspection_history.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /inspection_histories/1
  # PUT /inspection_histories/1.xml
  def update
    @inspection_history = InspectionHistory.find(params[:id])

    respond_to do |format|
      if @inspection_history.update_attributes(params[:inspection_history])
        flash[:notice] = 'InspectionHistory was successfully updated.'
        format.html { redirect_to(@inspection_history) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @inspection_history.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /inspection_histories/1
  # DELETE /inspection_histories/1.xml
  def destroy
    @inspection_history = InspectionHistory.find(params[:id])
    @inspection_history.destroy

    respond_to do |format|
      format.html { redirect_to(inspection_histories_url) }
      format.xml  { head :ok }
    end
  end
end
