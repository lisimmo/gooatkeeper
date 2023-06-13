class GoatTreatmentsController < ApplicationController
  before_action :set_goat_treatment, only: %i[ show update destroy ]

  # GET /goat_treatments
  # GET /goat_treatments.json
  def index
    @goat_treatments = GoatTreatment.all
  end

  # GET /goat_treatments/1
  # GET /goat_treatments/1.json
  def show
  end

  # POST /goat_treatments
  # POST /goat_treatments.json
  def create
    @goat_treatment = GoatTreatment.new(goat_treatment_params)

    if @goat_treatment.save
      render :show, status: :created, location: @goat_treatment
    else
      render json: @goat_treatment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /goat_treatments/1
  # PATCH/PUT /goat_treatments/1.json
  def update
    if @goat_treatment.update(goat_treatment_params)
      render :show, status: :ok, location: @goat_treatment
    else
      render json: @goat_treatment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /goat_treatments/1
  # DELETE /goat_treatments/1.json
  def destroy
    @goat_treatment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goat_treatment
      @goat_treatment = GoatTreatment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def goat_treatment_params
      params.require(:goat_treatment).permit(:treatment_id, :goat_id)
    end
end
