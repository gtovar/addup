class Order < ActiveRecord::Base
belongs_to :donation
 attr_accessor :card_number, :card_verification
 attr_accessible :card_expires_on, :card_type, :donation_id, :first_name, :ip_address, :last_name, :new
end
