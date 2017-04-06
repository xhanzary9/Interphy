require 'test_helper'

class PrincipalControllerTest < ActionDispatch::IntegrationTest
  test "should get verCuentas" do
    get principal_verCuentas_url
    assert_response :success
  end

  test "should get verPuestos" do
    get principal_verPuestos_url
    assert_response :success
  end

end
