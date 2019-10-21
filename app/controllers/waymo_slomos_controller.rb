# typed: false
class WaymoSlomosController < ApplicationController
  before_action :set_waymo_slomo, only: [:show, :edit, :update, :destroy]

  # GET /waymo_slomos
  # GET /waymo_slomos.json
  def index
    @waymo_slomos = WaymoSlomo.all
  end

  # GET /waymo_slomos/1
  # GET /waymo_slomos/1.json
  def show
  end

  # GET /waymo_slomos/new
  def new
    @waymo_slomo = WaymoSlomo.new
  end

  # GET /waymo_slomos/1/edit
  def edit
  end

  # POST /waymo_slomos
  # POST /waymo_slomos.json
  def create
    @waymo_slomo = WaymoSlomo.new(waymo_slomo_params)

    respond_to do |format|
      if @waymo_slomo.save
        format.html { redirect_to @waymo_slomo, notice: 'Waymo slomo was successfully created.' }
        format.json { render :show, status: :created, location: @waymo_slomo }
      else
        format.html { render :new }
        format.json { render json: @waymo_slomo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /waymo_slomos/1
  # PATCH/PUT /waymo_slomos/1.json
  def update
    respond_to do |format|
      if @waymo_slomo.update(waymo_slomo_params)
        format.html { redirect_to @waymo_slomo, notice: 'Waymo slomo was successfully updated.' }
        format.json { render :show, status: :ok, location: @waymo_slomo }
      else
        format.html { render :edit }
        format.json { render json: @waymo_slomo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /waymo_slomos/1
  # DELETE /waymo_slomos/1.json
  def destroy
    @waymo_slomo.destroy
    respond_to do |format|
      format.html { redirect_to waymo_slomos_url, notice: 'Waymo slomo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_waymo_slomo
      @waymo_slomo = WaymoSlomo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def waymo_slomo_params
      params.require(:waymo_slomo).permit(:banal_brainstorm_id)
    end
end
