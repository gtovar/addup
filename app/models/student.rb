class Student < ActiveRecord::Base
  belongs_to :university
  belongs_to :career
  belongs_to :sponsor
  has_many :donations
  belongs_to   :partnership
  belongs_to   :campaign
attr_accessible :first_name, :last_name, :university_id, :career_id, :enrollment, :sponsor_id, :partnership_id, :country, :city, :phone, :email, :account, :question1, :question2, :verified, :url_video, :url_facebook, :url_twitter, :current_year, :cause
end
