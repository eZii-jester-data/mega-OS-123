# typed: false
class EziiDeltaDirectionsController < ApplicationController
  before_action :set_ezii_delta_direction, only: [:show, :edit, :update, :destroy]

  # GET /ezii_delta_directions
  # GET /ezii_delta_directions.json
  def index
    @ezii_delta_directions = EziiDeltaDirection.all
  end

  # GET /ezii_delta_directions/1
  # GET /ezii_delta_directions/1.json
  def show
  end

  # GET /ezii_delta_directions/new
  def new
    @ezii_delta_direction = EziiDeltaDirection.new
  end

  # GET /ezii_delta_directions/1/edit
  def edit
  end

  # POST /ezii_delta_directions
  # POST /ezii_delta_directions.json
  def create
    @ezii_delta_direction = EziiDeltaDirection.new(ezii_delta_direction_params)

    respond_to do |format|
      if @ezii_delta_direction.save
        format.html { redirect_to @ezii_delta_direction, notice: 'Ezii delta direction was successfully created.' }
        format.json { render :show, status: :created, location: @ezii_delta_direction }
      else
        format.html { render :new }
        format.json { render json: @ezii_delta_direction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ezii_delta_directions/1
  # PATCH/PUT /ezii_delta_directions/1.json
  def update
    respond_to do |format|
      if @ezii_delta_direction.update(ezii_delta_direction_params)
        format.html { redirect_to @ezii_delta_direction, notice: 'Ezii delta direction was successfully updated.' }
        format.json { render :show, status: :ok, location: @ezii_delta_direction }
      else
        format.html { render :edit }
        format.json { render json: @ezii_delta_direction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ezii_delta_directions/1
  # DELETE /ezii_delta_directions/1.json
  def destroy
    @ezii_delta_direction.destroy
    respond_to do |format|
      format.html { redirect_to ezii_delta_directions_url, notice: 'Ezii delta direction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ezii_delta_direction
      @ezii_delta_direction = EziiDeltaDirection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ezii_delta_direction_params
      params.require(:ezii_delta_direction).permit(:ezii_delta_git_id, :direction_y)
    end
end
