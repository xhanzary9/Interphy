require 'test_helper'

class PuestosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @puesto = puestos(:one)
  end

  test "should get index" do
    get puestos_url
    assert_response :success
  end

  test "should get new" do
    get new_puesto_url
    assert_response :success
  end

  test "should create puesto" do
    assert_difference('Puesto.count') do
      post puestos_url, params: { puesto: { coordenadas: @puesto.coordenadas, horario: @puesto.horario, imagen: @puesto.imagen, info_general: @puesto.info_general, nombre: @puesto.nombre, numPuestoUNAM: @puesto.numPuestoUNAM } }
    end

    assert_redirected_to puesto_url(Puesto.last)
  end

  test "should show puesto" do
    get puesto_url(@puesto)
    assert_response :success
  end

  test "should get edit" do
    get edit_puesto_url(@puesto)
    assert_response :success
  end

  test "should update puesto" do
    patch puesto_url(@puesto), params: { puesto: { coordenadas: @puesto.coordenadas, horario: @puesto.horario, imagen: @puesto.imagen, info_general: @puesto.info_general, nombre: @puesto.nombre, numPuestoUNAM: @puesto.numPuestoUNAM } }
    assert_redirected_to puesto_url(@puesto)
  end

  test "should destroy puesto" do
    assert_difference('Puesto.count', -1) do
      delete puesto_url(@puesto)
    end

    assert_redirected_to puestos_url
  end
end
