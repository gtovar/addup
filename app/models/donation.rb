class Donation < ActiveRecord::Base
has_one :student_application
attr_accessible :currency, :invoice, :mc_gross, :params, :received_at, :status, :student_application, :transaction_id

def self.addupers (p1,p2,p3)
  where('student_application_id = ? AND mc_gross >= ? AND mc_gross <= ?',p1,p2,p3).count
end

end
