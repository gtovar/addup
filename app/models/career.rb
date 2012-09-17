class Career < ActiveRecord::Base
  has_many :relationships
  has_many :universities, :through => :relationships
  attr_accessible :career_id,:name, :years

#  attr_accessor :university_ids
#  after_save :update_university

#    def update_university
#    unless university_ids.nil?
#      self.university_career_relationships.each do |ucr|
#        ucr.destroy unless university_ids.include?(ucr.university_id.to_s)
#        university_ids.delete(ucr.university_id.to_s)
#      end
#      university_ids.each do |c|
#        self.university_career_relationships.create(:university_id => c) unless c.blank?
#      end
#      reload
#      self.university_ids = nil
#    end
#  end
end
