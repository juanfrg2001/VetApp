class MedicalsController < ApplicationController
  before_action :set_medical, only: %i[ show edit update destroy ]

  # GET /medicals or /medicals.json
  def index
    @medicals = Medical.all
  end

  # GET /medicals/1 or /medicals/1.json
  def show
  end

  # GET /medicals/new
  def new
    @medical = Medical.new
  end

  # GET /medicals/1/edit
  def edit
  end

  # POST /medicals or /medicals.json
  def create
    @medical = Medical.new(medical_params)

    respond_to do |format|
      if @medical.save
        format.html { redirect_to medical_url(@medical), notice: "Medical was successfully created." }
        format.json { render :show, status: :created, location: @medical }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @medical.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medicals/1 or /medicals/1.json
  def update
    respond_to do |format|
      if @medical.update(medical_params)
        format.html { redirect_to medical_url(@medical), notice: "Medical was successfully updated." }
        format.json { render :show, status: :ok, location: @medical }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @medical.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicals/1 or /medicals/1.json
  def destroy
    @medical.destroy

    respond_to do |format|
      format.html { redirect_to medicals_url, notice: "Medical was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical
      @medical = Medical.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medical_params
      params.require(:medical).permit(:speciality_id, :nombre, :telefono, :direccion_residencia)
    end
end
