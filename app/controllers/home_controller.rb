class HomeController < ApplicationController

  def landingpage
    @students = Student.first

  end

  def student_detail
   # @student = Student.find(params[:id])
  end

  def choose_your_reward
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
end

def dommie_slider
  @students = Student.all
end

def dommie_paypal
end

def contact
end

def thanks
end

def dommie
  render :layout => nil
end

def thankstransf
end
def companies
end
end
