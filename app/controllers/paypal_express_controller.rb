class PaypalExpressController < ApplicationController
include ActiveMerchant::Billing::Integrations
def checkout
end

def notifications
   notify = Paypal::Notification.new(request.raw_post)
   PaymentNotification.create!(:params => params,:status => notify.status, :transaction_id => notify.transaction_id )
render :nothing => true
  end


end
