require 'test_helper'

class PaymentNotificationControllerTest < ActionController::TestCase
  test "should get params:text" do
    get :params:text
    assert_response :success
  end

  test "should get status:string" do
    get :status:string
    assert_response :success
  end

  test "should get transaction_id:string" do
    get :transaction_id:string
    assert_response :success
  end

end
