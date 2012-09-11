class University < ActiveRecord::Base
  has_many :university_career_relationships
  has_many :Careers, :through => :university_career_relationships
  attr_accessible :name, :url_logo
  attr_accessor :career_ids
  after_save :update_careers

  def update_careers
    unless career_ids.nil?
      self.university_career_relationships.each do |ucr|
        ucr.destroy unless career_ids.include?(ucr.career_id.to_s)
        career_ids.delete(ucr.career_id.to_s)
      end
      careers_ids.each do |c|
        self.university_career_relationships.create(:career_id => c) unless c.blank?
      end
      reload
      self.career_ids = nil
    end
  end
end
