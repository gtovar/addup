class DonationsController < ApplicationController
  include ActiveMerchant::Billing::Integrations

  def ipn
    notify = Paypal::Notification.new(request.raw_post)
    donationstudent = Donation.find_by_invoice_and_status(notify.invoice,'Pending')
    if notify.acknowledge
      begin
        if notify.complete? and donationstudent.invoice == notify.invoice
         donationstudent.update_attributes(:status => 'Complete',:transaction_id => notify.transaction_id,:received_at => Date.today,:invoice => notify.invoice,:currency => notify.currency,:params => params)
        else
          logger.error("Failed to verify Paypal's notification, please investigate")
        end
      rescue => e
        donationstudent.status = 'failed'
        raise
      ensure
        donationstudent.save
      end
    end

  end
end
