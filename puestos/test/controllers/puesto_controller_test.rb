require 'test_helper'

class PuestoControllerTest < ActionDispatch::IntegrationTest
  test "should get crearPuesto" do
    get puesto_crearPuesto_url
    assert_response :success
  end

  test "should get verPuesto" do
    get puesto_verPuesto_url
    assert_response :success
  end

  test "should get crearComentario" do
    get puesto_crearComentario_url
    assert_response :success
  end

  test "should get verComentarios" do
    get puesto_verComentarios_url
    assert_response :success
  end

end
