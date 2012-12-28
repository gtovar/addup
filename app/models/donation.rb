class Donation < ActiveRecord::Base

  before_create :generate_number

  has_one :student_application
  attr_accessible :currency, :invoice, :mc_gross, :params, :received_at, :status, :student_application, :transaction_id,:student_application_id

 default_scope where(:status => "Complete")

  def self.addupers (p1,p2,p3)
    where("student_application_id = ? AND mc_gross >= ? AND mc_gross <= ?",p1,p2,p3).count
  end

  def self.total_x_student
    sum(:mc_gross).round
  end

  def generate_number
    record = true
    while record
      random = SecureRandom.hex(10)
      record = self.class.where(:invoice => random).first
    end
    self.invoice = random if self.invoice.blank?
    self.invoice
    self.status = 'Pending'
    self.transaction_id = nil
    self.received_at = nil
    self.currency = 'USD'
    self.params = nil
  end


end
