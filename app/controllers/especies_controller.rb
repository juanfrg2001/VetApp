class EspeciesController < ApplicationController
  before_action :set_especy, only: %i[ show edit update destroy ]

  # GET /especies or /especies.json
  def index
    @especies = Especy.all
  end

  # GET /especies/1 or /especies/1.json
  def show
  end

  # GET /especies/new
  def new
    @especy = Especy.new
  end

  # GET /especies/1/edit
  def edit
  end

  # POST /especies or /especies.json
  def create
    @especy = Especy.new(especy_params)

    respond_to do |format|
      if @especy.save
        format.html { redirect_to especy_url(@especy), notice: "Especy was successfully created." }
        format.json { render :show, status: :created, location: @especy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @especy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /especies/1 or /especies/1.json
  def update
    respond_to do |format|
      if @especy.update(especy_params)
        format.html { redirect_to especy_url(@especy), notice: "Especy was successfully updated." }
        format.json { render :show, status: :ok, location: @especy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @especy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /especies/1 or /especies/1.json
  def destroy
    @especy.destroy

    respond_to do |format|
      format.html { redirect_to especies_url, notice: "Especy was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_especy
      @especy = Especy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def especy_params
      params.require(:especy).permit(:raza, :genero, :edad, :esterilizado)
    end
end
