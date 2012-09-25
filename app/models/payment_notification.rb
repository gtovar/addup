class PaymentNotification < ActiveRecord::Base
  attr_accessible :params, :status, :transaction_id
end
