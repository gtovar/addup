class Teacher < ActiveRecord::Base
  belongs_to :university
  attr_accessible :name, :review, :verified, :university_id
end
