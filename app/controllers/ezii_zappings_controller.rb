# typed: false
class EziiZappingsController < ApplicationController
  before_action :set_ezii_zapping, only: [:show, :edit, :update, :destroy]

  # GET /ezii_zappings
  # GET /ezii_zappings.json
  def index
    @ezii_zappings = EziiZapping.all
  end

  # GET /ezii_zappings/1
  # GET /ezii_zappings/1.json
  def show
  end

  # GET /ezii_zappings/new
  def new
    @ezii_zapping = EziiZapping.new
  end

  # GET /ezii_zappings/1/edit
  def edit
  end

  # POST /ezii_zappings
  # POST /ezii_zappings.json
  def create
    @ezii_zapping = EziiZapping.new(ezii_zapping_params)

    respond_to do |format|
      if @ezii_zapping.save
        format.html { redirect_to @ezii_zapping, notice: 'Ezii zapping was successfully created.' }
        format.json { render :show, status: :created, location: @ezii_zapping }
      else
        format.html { render :new }
        format.json { render json: @ezii_zapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ezii_zappings/1
  # PATCH/PUT /ezii_zappings/1.json
  def update
    respond_to do |format|
      if @ezii_zapping.update(ezii_zapping_params)
        format.html { redirect_to @ezii_zapping, notice: 'Ezii zapping was successfully updated.' }
        format.json { render :show, status: :ok, location: @ezii_zapping }
      else
        format.html { render :edit }
        format.json { render json: @ezii_zapping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ezii_zappings/1
  # DELETE /ezii_zappings/1.json
  def destroy
    @ezii_zapping.destroy
    respond_to do |format|
      format.html { redirect_to ezii_zappings_url, notice: 'Ezii zapping was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ezii_zapping
      @ezii_zapping = EziiZapping.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ezii_zapping_params
      params.require(:ezii_zapping).permit(:previous_url, :next_url)
    end
end
