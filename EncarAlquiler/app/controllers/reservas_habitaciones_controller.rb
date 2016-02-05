class ReservasHabitacionesController < ApplicationController
  before_action :set_reserva_habitacion, only: [:show, :edit, :update, :destroy]

  # GET /reservas_habitaciones
  # GET /reservas_habitaciones.json
  def index
    @reservas_habitaciones = ReservaHabitacion.all
  end

  # GET /reservas_habitaciones/1
  # GET /reservas_habitaciones/1.json
  def show
  end

  # GET /reservas_habitaciones/new
  def new
    @reserva_habitacion = ReservaHabitacion.new
  end

  # GET /reservas_habitaciones/1/edit
  def edit
  end

  # POST /reservas_habitaciones
  # POST /reservas_habitaciones.json
  def create
    @reserva_habitacion = ReservaHabitacion.new(reserva_habitacion_params)

    respond_to do |format|
      if @reserva_habitacion.save
        format.html { redirect_to @reserva_habitacion, notice: 'Reserva de habitacion creada.' }
        format.json { render :show, status: :created, location: @reserva_habitacion }
      else
        format.html { render :new }
        format.json { render json: @reserva_habitacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reservas_habitaciones/1
  # PATCH/PUT /reservas_habitaciones/1.json
  def update
    respond_to do |format|
      if @reserva_habitacion.update(reserva_habitacion_params)
        format.html { redirect_to @reserva_habitacion, notice: 'Reserva de habitacion editada.' }
        format.json { render :show, status: :ok, location: @reserva_habitacion }
      else
        format.html { render :edit }
        format.json { render json: @reserva_habitacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservas_habitaciones/1
  # DELETE /reservas_habitaciones/1.json
  def destroy
    @reserva_habitacion.destroy
    respond_to do |format|
      format.html { redirect_to reservas_habitaciones_url, notice: 'Reserva de habitacion destruida.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reserva_habitacion
      @reserva_habitacion = ReservaHabitacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reserva_habitacion_params
      params.require(:reserva_habitacion).permit(:reserva_id, :habitacion_id, :fecha_inicio, :fecha_fin, :precio)
    end
end
