class Advisor < ActiveRecord::Base
  attr_accessible :email, :feedback, :job, :jobp, :name, :photo, :quote
  mount_uploader :photo, ImageUploader
  scope :quotes, order("RANDOM()")
  validates :jobp, :name, :presence => true

end
