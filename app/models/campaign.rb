class Campaign < ActiveRecord::Base
  belongs_to :student
  attr_accessible :goal, :timer
end
