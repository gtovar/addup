require 'test_helper'

class PanelControlControllerTest < ActionController::TestCase
  test "should get index–no-test-framework" do
    get :index–no-test-framework
    assert_response :success
  end

end
