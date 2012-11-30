class HomeController < ApplicationController
  def landingpage
    @allstudents = StudentApplication.order("id ASC")
    @students = @allstudents.each_slice(3).to_a
    @banner = @allstudents.limit(12)
    @random = StudentApplication.first(:order => "RANDOM()")

    respond_to do |format|
      format.html
      format.json {render json: @students}
    end
  end

  def student_detail
    @student   = StudentApplication.find(params[:id])
    d20        = Donation.addupers(params[:id],20,50)
    d50        = Donation.addupers(params[:id],50,75)
    d75        = Donation.addupers(params[:id],75,100)
    d100       = Donation.addupers(params[:id],100,10000000)
    @donations = [[d20,"20"],[d50,"50"],[d75,"75"],[d100,"100"]]
  end

  def choose_your_reward
    @student = StudentApplication.find(params[:id])
    @donations = [20,50,75,100]
  end

  def how_it_works
  end

  def msg
  end

  def terms
  end

  def privacy
  end

  def about
    @count = Donation.count
  end

  def contact
  end

  def thanks
  end

  def thankstransf
    @student = StudentApplication.find(params[:id])
  end

  def checkout
   logger.debug(params[:money])
   @student = StudentApplication.find(params[:id])
   @counts = @student.donations.count
   @record =  Donation.create!(:student_application_id => params[:id],:mc_gross => params[:money])
  end

  def student
  end
end
