class HabitacionesController < ApplicationController
before_action :set_habitacion, only: [:show, :edit, :update, :destroy]

  # GET /usuarios
  # GET /usuarios.json
  def index
    @habitaciones = Habitacion.all
  end

  # GET /usuarios/1
  # GET /usuarios/1.json
  def show
  end

  # GET /usuarios/new/no plural
  def new
    @habitacion = Habitacion.new
  end

  # GET /usuarios/1/edit
  def edit
  end

  # POST /usuarios
  # POST /usuarios.json/no plural
  def create
    @habitacion = Habitacion.new(habitacion_params)

    respond_to do |format|
      if @habitacion.save
        format.html { redirect_to @habitacion, notice: 'Habitacion was successfully created.' }
        format.json { render :show, status: :created, location: @habitacion }
      else
        format.html { render :new }
        format.json { render json: @habitacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuarios/1
  # PATCH/PUT /usuarios/1.json
  def update
    respond_to do |format|
      if @habitacion.update(habitacion_params)
        format.html { redirect_to @habitacion, notice: 'Habitacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @habitacion }
      else
        format.html { render :edit }
        format.json { render json: @habitacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarios/1
  # DELETE /usuarios/1.json
  def destroy
    @habitacion.destroy
    respond_to do |format|
      format.html { redirect_to habitaciones_url, notice: 'Habitacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_habitacion
      @habitacion = Habitacion.find(params[:id])
    end

    # para que muestre los valores cargados
    # Never trust parameters from the scary internet, only allow the white list through.
    def habitacion_params
      params.require(:habitacion).permit(:numero, :tipo_id, :descripcion, :precio)
    end
end

