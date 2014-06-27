require 'test_helper'

class ScuolaControllerTest < ActionController::TestCase
  test "should get storia" do
    get :storia
    assert_response :success
  end

  test "should get obiettivi" do
    get :obiettivi
    assert_response :success
  end

end
