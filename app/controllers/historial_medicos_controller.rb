class HistorialMedicosController < ApplicationController
  before_action :set_historial_medico, only: %i[ show edit update destroy ]

  # GET /historial_medicos or /historial_medicos.json
  def index
    @historial_medicos = HistorialMedico.all
  end

  # GET /historial_medicos/1 or /historial_medicos/1.json
  def show
  end

  # GET /historial_medicos/new
  def new
    @historial_medico = HistorialMedico.new
  end

  # GET /historial_medicos/1/edit
  def edit
  end

  # POST /historial_medicos or /historial_medicos.json
  def create
    @historial_medico = HistorialMedico.new(historial_medico_params)

    respond_to do |format|
      if @historial_medico.save
        format.html { redirect_to historial_medico_url(@historial_medico), notice: "Historial medico was successfully created." }
        format.json { render :show, status: :created, location: @historial_medico }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @historial_medico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historial_medicos/1 or /historial_medicos/1.json
  def update
    respond_to do |format|
      if @historial_medico.update(historial_medico_params)
        format.html { redirect_to historial_medico_url(@historial_medico), notice: "Historial medico was successfully updated." }
        format.json { render :show, status: :ok, location: @historial_medico }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @historial_medico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historial_medicos/1 or /historial_medicos/1.json
  def destroy
    @historial_medico.destroy

    respond_to do |format|
      format.html { redirect_to historial_medicos_url, notice: "Historial medico was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historial_medico
      @historial_medico = HistorialMedico.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def historial_medico_params
      params.require(:historial_medico).permit(:agenda_id, :motivo_consulta, :fecha_consulta, :cdiagnostico, :tratamiento_seguir)
    end
end
