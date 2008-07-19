class ItemSubtypesController < ApplicationController
  # GET /item_subtypes
  # GET /item_subtypes.xml
  def index
    @item_subtypes = ItemSubtype.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @item_subtypes }
    end
  end

  # GET /item_subtypes/1
  # GET /item_subtypes/1.xml
  def show
    @item_subtype = ItemSubtype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @item_subtype }
    end
  end

  # GET /item_subtypes/new
  # GET /item_subtypes/new.xml
  def new
    @item_subtype = ItemSubtype.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @item_subtype }
    end
  end

  # GET /item_subtypes/1/edit
  def edit
    @item_subtype = ItemSubtype.find(params[:id])
  end

  # POST /item_subtypes
  # POST /item_subtypes.xml
  def create
    @item_subtype = ItemSubtype.new(params[:item_subtype])

    respond_to do |format|
      if @item_subtype.save
        flash[:notice] = 'ItemSubtype was successfully created.'
        format.html { redirect_to(@item_subtype) }
        format.xml  { render :xml => @item_subtype, :status => :created, :location => @item_subtype }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @item_subtype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /item_subtypes/1
  # PUT /item_subtypes/1.xml
  def update
    @item_subtype = ItemSubtype.find(params[:id])

    respond_to do |format|
      if @item_subtype.update_attributes(params[:item_subtype])
        flash[:notice] = 'ItemSubtype was successfully updated.'
        format.html { redirect_to(@item_subtype) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @item_subtype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /item_subtypes/1
  # DELETE /item_subtypes/1.xml
  def destroy
    @item_subtype = ItemSubtype.find(params[:id])
    @item_subtype.destroy

    respond_to do |format|
      format.html { redirect_to(item_subtypes_url) }
      format.xml  { head :ok }
    end
  end
end
