require 'test_helper'

class CalificasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @califica = calificas(:one)
  end

  test "should get index" do
    get calificas_url
    assert_response :success
  end

  test "should get new" do
    get new_califica_url
    assert_response :success
  end

  test "should create califica" do
    assert_difference('Califica.count') do
      post calificas_url, params: { califica: { comentario: @califica.comentario, estrellas: @califica.estrellas, puesto_id: @califica.puesto_id, user_id: @califica.user_id } }
    end

    assert_redirected_to califica_url(Califica.last)
  end

  test "should show califica" do
    get califica_url(@califica)
    assert_response :success
  end

  test "should get edit" do
    get edit_califica_url(@califica)
    assert_response :success
  end

  test "should update califica" do
    patch califica_url(@califica), params: { califica: { comentario: @califica.comentario, estrellas: @califica.estrellas, puesto_id: @califica.puesto_id, user_id: @califica.user_id } }
    assert_redirected_to califica_url(@califica)
  end

  test "should destroy califica" do
    assert_difference('Califica.count', -1) do
      delete califica_url(@califica)
    end

    assert_redirected_to calificas_url
  end
end
