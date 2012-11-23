class PaypalExpressController < ApplicationController
include ActiveMerchant::Billing::Integrations
def checkout
end

def notifications
   notify = Paypal::Notification.new(request.raw_post)
   Donation.create!(:params => params,:status => notify.status, :transaction_id => notify.transaction_id )
render :nothing => true
end


end

#rails g model Donation student_application:reference,status:string,transaction_id:string,mc_gross:decimal,received_at:datetime,invoice:string,currency:string,params:text

#Parameters: {"test_ipn"=>"1", "payment_type"=>"echeck", "payment_date"=>"10:41:23 Nov 23, 2012 PST", "payment_status"=>"Completed", "address_status"=>"confirmed", "payer_status"=>"verified", "first_name"=>"John", "last_name"=>"Smith", "payer_email"=>"buyer@paypalsandbox.com", "payer_id"=>"TESTBUYERID01", "address_name"=>"John Smith", "address_country"=>"United States", "address_country_code"=>"US", "address_zip"=>"95131", "address_state"=>"CA", "address_city"=>"San Jose", "address_street"=>"123, any street", "business"=>"seller@paypalsandbox.com", "receiver_email"=>"seller@paypalsandbox.com", "receiver_id"=>"TESTSELLERID1", "residence_country"=>"US", "item_name"=>"something", "item_number"=>"AK-1234", "quantity"=>"1", "shipping"=>"3.04", "tax"=>"2.02", "mc_currency"=>"USD", "mc_fee"=>"0.44", "mc_gross"=>"12.34", "txn_type"=>"web_accept", "txn_id"=>"2311231841", "notify_version"=>"2.1", "custom"=>"xyz123", "invoice"=>"abc1234", "charset"=>"windows-1252", "verify_sign"=>"A5G.fu6KTfBVIqSQPAJhbwcbZfHjAFwwyBYpp

