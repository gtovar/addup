class PartnershipsController < ApplicationController
  # GET /partnerships
  # GET /partnerships.json
  layout 'back_end_application'
  def index
    @partnerships = Partnership.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @partnerships }
    end
  end

  # GET /partnerships/1
  # GET /partnerships/1.json
  def show
    @partnership = Partnership.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @partnership }
    end
  end

  # GET /partnerships/new
  # GET /partnerships/new.json
  def new
    @partnership = Partnership.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @partnership }
    end
  end

  # GET /partnerships/1/edit
  def edit
    @partnership = Partnership.find(params[:id])
  end

  # POST /partnerships
  # POST /partnerships.json
  def create
    @partnership = Partnership.new(params[:partnership])

    respond_to do |format|
      if @partnership.save
        format.html { redirect_to @partnership, notice: 'Partnership was successfully created.' }
        format.json { render json: @partnership, status: :created, location: @partnership }
      else
        format.html { render action: "new" }
        format.json { render json: @partnership.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /partnerships/1
  # PUT /partnerships/1.json
  def update
    @partnership = Partnership.find(params[:id])

    respond_to do |format|
      if @partnership.update_attributes(params[:partnership])
        format.html { redirect_to @partnership, notice: 'Partnership was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @partnership.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partnerships/1
  # DELETE /partnerships/1.json
  def destroy
    @partnership = Partnership.find(params[:id])
    @partnership.destroy

    respond_to do |format|
      format.html { redirect_to partnerships_url }
      format.json { head :no_content }
    end
  end
end
