class PaypalExpressController < ApplicationController
include ActiveMerchant::Billing::Integrations
def checkout
end
end
