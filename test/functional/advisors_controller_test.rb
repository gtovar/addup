require 'test_helper'

class AdvisorsControllerTest < ActionController::TestCase
  setup do
    @advisor = advisors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:advisors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advisor" do
    assert_difference('Advisor.count') do
      post :create, advisor: { email: @advisor.email, feedback: @advisor.feedback, job: @advisor.job, jobp: @advisor.jobp, name: @advisor.name, photo: @advisor.photo, quote: @advisor.quote }
    end

    assert_redirected_to advisor_path(assigns(:advisor))
  end

  test "should show advisor" do
    get :show, id: @advisor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @advisor
    assert_response :success
  end

  test "should update advisor" do
    put :update, id: @advisor, advisor: { email: @advisor.email, feedback: @advisor.feedback, job: @advisor.job, jobp: @advisor.jobp, name: @advisor.name, photo: @advisor.photo, quote: @advisor.quote }
    assert_redirected_to advisor_path(assigns(:advisor))
  end

  test "should destroy advisor" do
    assert_difference('Advisor.count', -1) do
      delete :destroy, id: @advisor
    end

    assert_redirected_to advisors_path
  end
end
