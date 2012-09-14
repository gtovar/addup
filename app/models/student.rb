class Student < ActiveRecord::Base
  belongs_to :relationship
  belongs_to :teacher_id
  belongs_to :organization_id
  attr_accessible :campaign, :city, :cost_per_year, :country, :current_year, :last_name, :maternal_surname, :name, :paternal_surname, :question1, :question2, :url_facebook, :url_twitter, :url_university, :url_video, :verified
end
