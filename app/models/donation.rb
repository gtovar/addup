class Donation < ActiveRecord::Base
has_one :student_application
attr_accessible :currency, :invoice, :mc_gross, :params, :received_at, :status, :student_application, :transaction_id
end
