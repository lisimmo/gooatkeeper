class GoatsController < ApplicationController
  before_action :set_goat, only: %i[ show update destroy ]

  # GET /goats
  def index
    breed = params.fetch(:breed, nil)
    @goats = Goat.with_breed(breed).all
    respond_to do |format|
      format.json
    end
  end

  # GET /goats/1
  def show
    respond_to do |format|
      format.json
    end
  end

  # POST /goats
  def create
    @goat = Goat.new(goat_params)

    if @goat.save
      respond_to do |format|
        format.json {render "show", status: :created, location: @goat}
      end
    else
      render json: @goat.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /goats/1
  def update
    if @goat.update(goat_params)
      respond_to do |format|
        format.json {render "show", status: :accepted, location: @goat}
      end
      # render json: @goat
    else
      render json: @goat.errors, status: :unprocessable_entity
    end
  end

  # DELETE /goats/1
  def destroy
    @goat.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_goat
    @goat = Goat.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def goat_params
    params.require(:goat).permit(:name, :gid, :breed_id, :primary_color, :secondary_color, :dob)
  end
end
