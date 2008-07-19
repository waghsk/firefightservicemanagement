class HptHistoriesController < ApplicationController
  # GET /hpt_histories
  # GET /hpt_histories.xml
  def index
    @hpt_histories = HptHistory.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hpt_histories }
    end
  end

  # GET /hpt_histories/1
  # GET /hpt_histories/1.xml
  def show
    @hpt_history = HptHistory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hpt_history }
    end
  end

  # GET /hpt_histories/new
  # GET /hpt_histories/new.xml
  def new
    @hpt_history = HptHistory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hpt_history }
    end
  end

  # GET /hpt_histories/1/edit
  def edit
    @hpt_history = HptHistory.find(params[:id])
  end

  # POST /hpt_histories
  # POST /hpt_histories.xml
  def create
    @hpt_history = HptHistory.new(params[:hpt_history])

    respond_to do |format|
      if @hpt_history.save
        flash[:notice] = 'HptHistory was successfully created.'
        format.html { redirect_to(@hpt_history) }
        format.xml  { render :xml => @hpt_history, :status => :created, :location => @hpt_history }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hpt_history.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hpt_histories/1
  # PUT /hpt_histories/1.xml
  def update
    @hpt_history = HptHistory.find(params[:id])

    respond_to do |format|
      if @hpt_history.update_attributes(params[:hpt_history])
        flash[:notice] = 'HptHistory was successfully updated.'
        format.html { redirect_to(@hpt_history) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hpt_history.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hpt_histories/1
  # DELETE /hpt_histories/1.xml
  def destroy
    @hpt_history = HptHistory.find(params[:id])
    @hpt_history.destroy

    respond_to do |format|
      format.html { redirect_to(hpt_histories_url) }
      format.xml  { head :ok }
    end
  end
end
