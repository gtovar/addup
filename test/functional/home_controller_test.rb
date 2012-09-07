require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get landingpage" do
    get :landingpage
    assert_response :success
  end

  test "should get student_detail" do
    get :student_detail
    assert_response :success
  end

  test "should get choose_your_reward" do
    get :choose_your_reward
    assert_response :success
  end

  test "should get how_it_works" do
    get :how_it_works
    assert_response :success
  end

end
