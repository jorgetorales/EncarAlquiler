require 'test_helper'

class ReservasHabitacionesControllerTest < ActionController::TestCase
  setup do
    @reserva_habitacion = reservas_habitaciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reservas_habitaciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reserva_habitacion" do
    assert_difference('ReservaHabitacion.count') do
      post :create, reserva_habitacion: { fecha_fin: @reserva_habitacion.fecha_fin, fecha_inicio: @reserva_habitacion.fecha_inicio, habitacion_id: @reserva_habitacion.habitacion_id, reserva_id: @reserva_habitacion.reserva_id }
    end

    assert_redirected_to reserva_habitacion_path(assigns(:reserva_habitacion))
  end

  test "should show reserva_habitacion" do
    get :show, id: @reserva_habitacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reserva_habitacion
    assert_response :success
  end

  test "should update reserva_habitacion" do
    patch :update, id: @reserva_habitacion, reserva_habitacion: { fecha_fin: @reserva_habitacion.fecha_fin, fecha_inicio: @reserva_habitacion.fecha_inicio, habitacion_id: @reserva_habitacion.habitacion_id, reserva_id: @reserva_habitacion.reserva_id }
    assert_redirected_to reserva_habitacion_path(assigns(:reserva_habitacion))
  end

  test "should destroy reserva_habitacion" do
    assert_difference('ReservaHabitacion.count', -1) do
      delete :destroy, id: @reserva_habitacion
    end

    assert_redirected_to reservas_habitaciones_path
  end
end
