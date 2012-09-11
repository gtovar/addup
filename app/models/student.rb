class Student < ActiveRecord::Base
  attr_accessible :campaign, :city, :cost_per_year, :country, :current_year, :last_name, :maternal_surname, :name, :paternal_surname, :question1, :question2, :teacher_id, :university_career_id, :url_facebook, :url_twitter, :url_university, :url_video, :verified
end
