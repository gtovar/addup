class JavascriptController < ApplicationController
def dynamic_careers
  @careers= Career.all
end
  def get_careers
    @university = University.find(params[:university_id])
    @careers = @university.careers
    @relationships = @university.relationships

    respond_to do |format|
      format.html
    end
  end

  def get_relationship
    @university = University.find(params[:university_id])
    @careers = @university.careers (params[:career_id])
    @relationships = @university.relationships
    @id = @relationships.find_by_career_id(@careers)

    respond_to do |format|
      format.html
    end
  end

end
