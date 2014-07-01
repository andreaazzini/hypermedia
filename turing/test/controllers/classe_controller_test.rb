require 'test_helper'

class ClasseControllerTest < ActionController::TestCase
  test "should get bacheca" do
    get :bacheca
    assert_response :success
  end

  test "should get coordinamento_e_consiglio_di_classe" do
    get :coordinamento_e_consiglio_di_classe
    assert_response :success
  end

  test "should get materiale" do
    get :materiale
    assert_response :success
  end

  test "should get orario" do
    get :orario
    assert_response :success
  end

end
