class HomeController < ApplicationController

  def landingpage
    unless params.blank?
      email = params[:email]
      h = Hominid::API.new("747ad60d361e1376cf91b3ff8d48a814-us5")
      begin
        @response = h.list_subscribe('af0a762abc',email,{:FNAME => '', :LNAME => ''},'html',false, true, true, false)
      rescue
        @response = nil
      end
    end
    @allstudents = StudentApplication.order("id ASC")
    @students = @allstudents.each_slice(3).to_a
    @banner = @allstudents.limit(12)
    @random = Advisor.quotes
       respond_to do |format|
        format.html
        format.js
      end
 end

  def student_detail
    @student   = StudentApplication.find(params[:id])
    #d20        = Donation.addupers(params[:id],20,50)
    #d50        = Donation.addupers(params[:id],50,75)
    #d75        = Donation.addupers(params[:id],75,100)
    #d100       = Donation.addupers(params[:id],100,10000000)
    #@donations = [[d20,"20"],[d50,"50"],[d75,"75"],[d100,"100"]]
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
    @count = Donation.where(:status => "Complete").count
    @advisors = Advisor.all
  end

  def contact
    unless params.blank?
      c = ContactForm.new(:name => params["name"],:email => params["email"], :message => params["message"])
      if  c.deliver
        redirect_to root_path
      end
    end
  end

  def thankstransf
    @student = StudentApplication.find(params[:id])
    @students = StudentApplication.limit(3).order("RANDOM()")
 end

  def checkout
   logger.debug(params[:money])
   @student = StudentApplication.find(params[:id])
   @counts = @student.donations.count
   @record =  Donation.create!(:student_application_id => params[:id],:mc_gross => params[:money])
  end

  def student
  end

  def companies
    unless params.blank?
      c = MatchForm.new(:name => params["name"],:email => params["email"], :message => params["message"], :company => params["company"])
      if  c.deliver
        redirect_to root_path
      end
    end
  end

  def newform

  end
end
