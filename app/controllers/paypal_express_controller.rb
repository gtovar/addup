class PaypalExpressController < ApplicationController
  before_filter :assigns_gateway

  include ActiveMerchant::Billing
  include PaypalExpressHelper

  def checkout
    total_as_centsi = 1000,
    setup_purchase_params = get_setup_purchase_params @cart,
    request
    :setup_response = @gateway.setup_purchase(total_as_cents, setup_purchase_params)
            redirect_to @gateway.redirect_url_for(setup_response.token)
=begin
  require 'rubygems'
  require 'active_merchant'


  def purchase_options
    {
      :order_id => 123,
      :ip => '187.162.128.236',
      :customer => 'Gilberto',
      :billing_address => {
      :name     => "Ryan Bates",
      :address1 => "123 Main St.",
      :city     => "New York",
      :state    => "NY",
      :country  => "US",
      :zip      => "10001"
    }
    }
  end



  def checkout
    ActiveMerchant::Billing::Base.mode = :test

    #Create a new credit card object
    gateway = ActiveMerchant::Billing::Base.gateway('bogus').new
    credit_card = 1

    # Authorize for $10 dollars (1000 cents)
    response = gateway.authorize(1000, credit_card,purchase_options)

    if response.success?
      # Capture the money
@paso1 = gateway.capture(1000,1)
    else
      raise StandardError, response.message
    end

  end
=end
end
