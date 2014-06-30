require 'test_helper'

class DocenteControllerTest < ActionController::TestCase
  test "should get curriculum" do
    get :curriculum
    assert_response :success
  end

  test "should get orario_ricevimenti" do
    get :orario_ricevimenti
    assert_response :success
  end

end
