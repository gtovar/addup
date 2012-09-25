require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { card_expires_on: @order.card_expires_on, card_type: @order.card_type, donation_id: @order.donation_id, first_name: @order.first_name, ip_address: @order.ip_address, last_name: @order.last_name, new: @order.new }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    put :update, id: @order, order: { card_expires_on: @order.card_expires_on, card_type: @order.card_type, donation_id: @order.donation_id, first_name: @order.first_name, ip_address: @order.ip_address, last_name: @order.last_name, new: @order.new }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
