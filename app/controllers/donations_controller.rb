class DonationsController < ApplicationController
include ActiveMerchant::Billing::Integrations

def ipn
notify = Paypal::Notification.new(request.raw_post)
Donation.create!(:student_application => notify.params['item_id'],:status => notify.status,:transaction_id => notify.transaction_id,:mc_gross => notify.gross,:received_at => notify.params['received_at'],:invoice => notify.invoice,:currency => notify.currency,:params => params)
render :nothing => true
end

end
