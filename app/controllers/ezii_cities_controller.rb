# typed: false
class EziiCitiesController < ApplicationController
  before_action :set_ezii_city, only: [:show, :edit, :update, :destroy]

  # GET /ezii_cities
  # GET /ezii_cities.json
  def index
    @ezii_cities = EziiCity.all
  end

  # GET /ezii_cities/1
  # GET /ezii_cities/1.json
  def show
  end

  # GET /ezii_cities/new
  def new
    @ezii_city = EziiCity.new
  end

  # GET /ezii_cities/1/edit
  def edit
  end

  # POST /ezii_cities
  # POST /ezii_cities.json
  def create
    @ezii_city = EziiCity.new(ezii_city_params)

    respond_to do |format|
      if @ezii_city.save
        format.html { redirect_to @ezii_city, notice: 'Ezii city was successfully created.' }
        format.json { render :show, status: :created, location: @ezii_city }
      else
        format.html { render :new }
        format.json { render json: @ezii_city.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ezii_cities/1
  # PATCH/PUT /ezii_cities/1.json
  def update
    respond_to do |format|
      if @ezii_city.update(ezii_city_params)
        format.html { redirect_to @ezii_city, notice: 'Ezii city was successfully updated.' }
        format.json { render :show, status: :ok, location: @ezii_city }
      else
        format.html { render :edit }
        format.json { render json: @ezii_city.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ezii_cities/1
  # DELETE /ezii_cities/1.json
  def destroy
    @ezii_city.destroy
    respond_to do |format|
      format.html { redirect_to ezii_cities_url, notice: 'Ezii city was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ezii_city
      @ezii_city = EziiCity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ezii_city_params
      params.require(:ezii_city).permit(:address)
    end
end
