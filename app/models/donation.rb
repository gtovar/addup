class Donation < ActiveRecord::Base
  has_many :students
  attr_accessible :params, :student_id, :status, :trasansaction_id
end
