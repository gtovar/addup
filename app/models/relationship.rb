class Relationship < ActiveRecord::Base
  belongs_to :university
  belongs_to :career
  attr_accessible :career_id, :university_id


end
