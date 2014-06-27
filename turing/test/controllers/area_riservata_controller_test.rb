require 'test_helper'

class AreaRiservataControllerTest < ActionController::TestCase
  test "should get registroElettronico" do
    get :registroElettronico
    assert_response :success
  end

  test "should get comunicazioniPersonali" do
    get :comunicazioniPersonali
    assert_response :success
  end

end
