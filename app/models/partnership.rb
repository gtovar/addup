class Partnership < ActiveRecord::Base
has_many :student
  attr_accessible :name, :url_logo, :partnership_id
end
