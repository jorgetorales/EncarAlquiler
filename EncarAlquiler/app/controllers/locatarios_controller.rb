class LocatariosController < ApplicationController
before_action :set_locatario, only: [:show, :edit, :update, :destroy]

  # GET /usuarios
  # GET /usuarios.json
  def index
    @locatarios = Locatario.all
  end

  # GET /usuarios/1
  # GET /usuarios/1.json
  def show
  end

  # GET /usuarios/new
  def new
    @locatario = Locatario.new
  end

  # GET /usuarios/1/edit
  def edit
  end

  # POST /usuarios
  # POST /usuarios.json
  def create
    @locatario = Locatario.new(locatario_params)

    respond_to do |format|
      if @locatario.save
        format.html { redirect_to @locatario, notice: 'Locatario was successfully created.' }
        format.json { render :show, status: :created, location: @locatario }
      else
        format.html { render :new }
        format.json { render json: @locatario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuarios/1
  # PATCH/PUT /usuarios/1.json
  def update
    respond_to do |format|
      if @locatario.update(locatario_params)
        format.html { redirect_to @locatario, notice: 'Locatario was successfully updated.' }
        format.json { render :show, status: :ok, location: @locatario }
      else
        format.html { render :edit }
        format.json { render json: @locatario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarios/1
  # DELETE /usuarios/1.json
  def destroy
    @locatario.destroy
    respond_to do |format|
      format.html { redirect_to locatarios_url, notice: 'Locatario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_locatario
      @locatario = Locatario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def locatario_params
      params.require(:locatario).permit(:nombre, :apellido, :ci, :telefono, :email)
    end
end

