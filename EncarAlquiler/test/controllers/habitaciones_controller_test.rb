require 'test_helper'

class HabitacionesControllerTest < ActionController::TestCase
  setup do
    @habitacion = habitaciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:habitaciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create habitacion" do
    assert_difference('Habitacion.count') do
      post :create, habitacion: { descripcion: @habitacion.descripcion, estado: @habitacion.estado, numero: @habitacion.numero, precio: @habitacion.precio, tipo_id: @habitacion.tipo_id }
    end

    assert_redirected_to habitacion_path(assigns(:habitacion))
  end

  test "should show habitacion" do
    get :show, id: @habitacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @habitacion
    assert_response :success
  end

  test "should update habitacion" do
    patch :update, id: @habitacion, habitacion: { descripcion: @habitacion.descripcion, estado: @habitacion.estado, numero: @habitacion.numero, precio: @habitacion.precio, tipo_id: @habitacion.tipo_id }
    assert_redirected_to habitacion_path(assigns(:habitacion))
  end

  test "should destroy habitacion" do
    assert_difference('Habitacion.count', -1) do
      delete :destroy, id: @habitacion
    end

    assert_redirected_to habitaciones_path
  end
end
