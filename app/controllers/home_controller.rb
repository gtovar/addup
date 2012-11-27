class HomeController < ApplicationController

  def landingpage
    @students = StudentApplication.order("id ASC").each_slice(3).to_a

    respond_to do |format|
      format.html
      format.json {render json: @students}
    end
     end

  def student_detail
    @student = StudentApplication.find(params[:id])
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

  def contact
  end

  def thanks
  end

  def thankstransf
  end

  def companies
  end

end
