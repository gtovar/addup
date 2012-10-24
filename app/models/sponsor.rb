class Sponsor < ActiveRecord::Base
  belongs_to :university
  attr_accessible :job, :name, :review, :verified, :university_id
end
