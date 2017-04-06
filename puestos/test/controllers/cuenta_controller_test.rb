require 'test_helper'

class CuentaControllerTest < ActionDispatch::IntegrationTest
  test "should get verCuenta" do
    get cuenta_verCuenta_url
    assert_response :success
  end

end
