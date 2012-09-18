class Student < ActiveRecord::Base
  belongs_to :university
  belongs_to :career
  belongs_to :teacher
  belongs_to :organization

attr_accessible :university_id, :career_id, :campaign, :city, :cost_per_year, :country, :current_year, :first_name, :last_name, :name, :career_id, :teacher_id, :organization_id, :question1, :question2, :url_facebook, :url_twitter, :url_university, :url_video, :verified
end
