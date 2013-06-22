class GirltypesController < ApplicationController
  # GET /girltypes
  # GET /girltypes.json
  def index
    @girltypes = Girltype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @girltypes }
    end
  end

  # GET /girltypes/1
  # GET /girltypes/1.json
  def show
    @girltype = Girltype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @girltype }
    end
  end

  # GET /girltypes/new
  # GET /girltypes/new.json
  def new
    @girltype = Girltype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @girltype }
    end
  end

  # GET /girltypes/1/edit
  def edit
    @girltype = Girltype.find(params[:id])
  end

  # POST /girltypes
  # POST /girltypes.json
  def create
    @girltype = Girltype.new(params[:girltype])

    respond_to do |format|
      if @girltype.save
        format.html { redirect_to @girltype, notice: 'Girltype was successfully created.' }
        format.json { render json: @girltype, status: :created, location: @girltype }
      else
        format.html { render action: "new" }
        format.json { render json: @girltype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /girltypes/1
  # PUT /girltypes/1.json
  def update
    @girltype = Girltype.find(params[:id])

    respond_to do |format|
      if @girltype.update_attributes(params[:girltype])
        format.html { redirect_to @girltype, notice: 'Girltype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @girltype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /girltypes/1
  # DELETE /girltypes/1.json
  def destroy
    @girltype = Girltype.find(params[:id])
    @girltype.destroy

    respond_to do |format|
      format.html { redirect_to girltypes_url }
      format.json { head :no_content }
    end
  end
end
