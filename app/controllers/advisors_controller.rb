class AdvisorsController < ApplicationController
 layout "back_end_application", :except => [:new,:create,:show]
 # GET /advisors
  # GET /advisors.json
 before_filter :authenticate_admin!, :only => [:index,:destroy]

 def index
    @advisors = Advisor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @advisors }
    end
  end

  # GET /advisors/1
  # GET /advisors/1.json
  def show
    @advisor = Advisor.find(params[:id])

    respond_to do |format|
      format.html { render :layout => "forms" }# show.html.erb
      format.json { render json: @advisor }
    end
  end

  # GET /advisors/new
  # GET /advisors/new.json
  def new
    @advisor = Advisor.new

    respond_to do |format|
      format.html { render :layout => "forms" }# new.html.erb
      format.json { render json: @advisor }
    end
  end

  # GET /advisors/1/edit
  def edit
    @advisor = Advisor.find(params[:id])
  end

  # POST /advisors
  # POST /advisors.json
  def create
    @advisor = Advisor.new(params[:advisor])

    respond_to do |format|
      if @advisor.save
        format.html { redirect_to @advisor, notice: 'Advisor was successfully created.' }
        format.json { render json: @advisor, status: :created, location: @advisor }
      else
        format.html { render action: "new" }
        format.json { render json: @advisor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /advisors/1
  # PUT /advisors/1.json
  def update
    @advisor = Advisor.find(params[:id])

    respond_to do |format|
      if @advisor.update_attributes(params[:advisor])
        format.html { redirect_to @advisor, notice: 'Advisor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @advisor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advisors/1
  # DELETE /advisors/1.json
  def destroy
    @advisor = Advisor.find(params[:id])
    @advisor.destroy

    respond_to do |format|
      format.html { redirect_to advisors_url }
      format.json { head :no_content }
    end
  end
end
