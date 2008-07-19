class RefillHistoriesController < ApplicationController
  # GET /refill_histories
  # GET /refill_histories.xml
  def index
    @refill_histories = RefillHistory.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @refill_histories }
    end
  end

  # GET /refill_histories/1
  # GET /refill_histories/1.xml
  def show
    @refill_history = RefillHistory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @refill_history }
    end
  end

  # GET /refill_histories/new
  # GET /refill_histories/new.xml
  def new
    @refill_history = RefillHistory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @refill_history }
    end
  end

  # GET /refill_histories/1/edit
  def edit
    @refill_history = RefillHistory.find(params[:id])
  end

  # POST /refill_histories
  # POST /refill_histories.xml
  def create
    @refill_history = RefillHistory.new(params[:refill_history])

    respond_to do |format|
      if @refill_history.save
        flash[:notice] = 'RefillHistory was successfully created.'
        format.html { redirect_to(@refill_history) }
        format.xml  { render :xml => @refill_history, :status => :created, :location => @refill_history }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @refill_history.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /refill_histories/1
  # PUT /refill_histories/1.xml
  def update
    @refill_history = RefillHistory.find(params[:id])

    respond_to do |format|
      if @refill_history.update_attributes(params[:refill_history])
        flash[:notice] = 'RefillHistory was successfully updated.'
        format.html { redirect_to(@refill_history) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @refill_history.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /refill_histories/1
  # DELETE /refill_histories/1.xml
  def destroy
    @refill_history = RefillHistory.find(params[:id])
    @refill_history.destroy

    respond_to do |format|
      format.html { redirect_to(refill_histories_url) }
      format.xml  { head :ok }
    end
  end
end
