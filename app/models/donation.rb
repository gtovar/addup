class Donation < ActiveRecord::Base
  has_one :order
  attr_accessible :adduper_id, :money, :order_id, :student_id
end
