class AddupersController < ApplicationController
  # GET /addupers
  # GET /addupers.json
  def index
    @addupers = Adduper.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @addupers }
    end
  end

  # GET /addupers/1
  # GET /addupers/1.json
  def show
    @adduper = Adduper.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @adduper }
    end
  end

  # GET /addupers/new
  # GET /addupers/new.json
  def new
    @adduper = Adduper.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @adduper }
    end
  end

  # GET /addupers/1/edit
  def edit
    @adduper = Adduper.find(params[:id])
  end

  # POST /addupers
  # POST /addupers.json
  def create
    @adduper = Adduper.new(params[:adduper])

    respond_to do |format|
      if @adduper.save
        format.html { redirect_to @adduper, notice: 'Adduper was successfully created.' }
        format.json { render json: @adduper, status: :created, location: @adduper }
      else
        format.html { render action: "new" }
        format.json { render json: @adduper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /addupers/1
  # PUT /addupers/1.json
  def update
    @adduper = Adduper.find(params[:id])

    respond_to do |format|
      if @adduper.update_attributes(params[:adduper])
        format.html { redirect_to @adduper, notice: 'Adduper was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @adduper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addupers/1
  # DELETE /addupers/1.json
  def destroy
    @adduper = Adduper.find(params[:id])
    @adduper.destroy

    respond_to do |format|
      format.html { redirect_to addupers_url }
      format.json { head :no_content }
    end
  end
end
