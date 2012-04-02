class GamezsController < ApplicationController
  # GET /gamezs
  # GET /gamezs.json
  def index
    @gamezs = Gamez.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gamezs }
    end
  end

  # GET /gamezs/1
  # GET /gamezs/1.json
  def show
    @gamez = Gamez.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gamez }
    end
  end

  # GET /gamezs/new
  # GET /gamezs/new.json
  def new
    @gamez = Gamez.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gamez }
    end
  end

  # GET /gamezs/1/edit
  def edit
    @gamez = Gamez.find(params[:id])
  end

  # POST /gamezs
  # POST /gamezs.json
  def create
    @gamez = Gamez.new(params[:gamez])

    respond_to do |format|
      if @gamez.save
        format.html { redirect_to @gamez, notice: 'Gamez was successfully created.' }
        format.json { render json: @gamez, status: :created, location: @gamez }
      else
        format.html { render action: "new" }
        format.json { render json: @gamez.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gamezs/1
  # PUT /gamezs/1.json
  def update
    @gamez = Gamez.find(params[:id])

    respond_to do |format|
      if @gamez.update_attributes(params[:gamez])
        format.html { redirect_to @gamez, notice: 'Gamez was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @gamez.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gamezs/1
  # DELETE /gamezs/1.json
  def destroy
    @gamez = Gamez.find(params[:id])
    @gamez.destroy

    respond_to do |format|
      format.html { redirect_to gamezs_url }
      format.json { head :ok }
    end
  end
end
