require 'test_helper'

class UsuarioControllerTest < ActionDispatch::IntegrationTest
  test "should get iniciarSesion" do
    get usuario_iniciarSesion_url
    assert_response :success
  end

  test "should get cerrarSesion" do
    get usuario_cerrarSesion_url
    assert_response :success
  end

  test "should get registro" do
    get usuario_registro_url
    assert_response :success
  end

end
