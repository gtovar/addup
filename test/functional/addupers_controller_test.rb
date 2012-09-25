require 'test_helper'

class AddupersControllerTest < ActionController::TestCase
  setup do
    @adduper = addupers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addupers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adduper" do
    assert_difference('Adduper.count') do
      post :create, adduper: { name: @adduper.name }
    end

    assert_redirected_to adduper_path(assigns(:adduper))
  end

  test "should show adduper" do
    get :show, id: @adduper
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adduper
    assert_response :success
  end

  test "should update adduper" do
    put :update, id: @adduper, adduper: { name: @adduper.name }
    assert_redirected_to adduper_path(assigns(:adduper))
  end

  test "should destroy adduper" do
    assert_difference('Adduper.count', -1) do
      delete :destroy, id: @adduper
    end

    assert_redirected_to addupers_path
  end
end
