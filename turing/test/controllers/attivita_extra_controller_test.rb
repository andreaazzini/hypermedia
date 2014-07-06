require 'test_helper'

class AttivitaExtraControllerTest < ActionController::TestCase
  test "should get descrizione" do
    get :descrizione
    assert_response :success
  end

  test "should get tutte_le_attivita" do
    get :tutte_le_attivita
    assert_response :success
  end

end
