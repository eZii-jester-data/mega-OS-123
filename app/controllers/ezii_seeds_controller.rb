# typed: false
class EziiSeedsController < ApplicationController
  before_action :set_ezii_seed, only: [:show, :edit, :update, :destroy]

  # GET /ezii_seeds
  # GET /ezii_seeds.json
  def index
    @ezii_seeds = EziiSeed.all
  end

  # GET /ezii_seeds/1
  # GET /ezii_seeds/1.json
  def show
  end

  # GET /ezii_seeds/new
  def new
    @ezii_seed = EziiSeed.new
  end

  # GET /ezii_seeds/1/edit
  def edit
  end

  # POST /ezii_seeds
  # POST /ezii_seeds.json
  def create
    @ezii_seed = EziiSeed.new(ezii_seed_params)

    respond_to do |format|
      if @ezii_seed.save
        format.html { redirect_to @ezii_seed, notice: 'Ezii seed was successfully created.' }
        format.json { render :show, status: :created, location: @ezii_seed }
      else
        format.html { render :new }
        format.json { render json: @ezii_seed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ezii_seeds/1
  # PATCH/PUT /ezii_seeds/1.json
  def update
    respond_to do |format|
      if @ezii_seed.update(ezii_seed_params)
        format.html { redirect_to @ezii_seed, notice: 'Ezii seed was successfully updated.' }
        format.json { render :show, status: :ok, location: @ezii_seed }
      else
        format.html { render :edit }
        format.json { render json: @ezii_seed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ezii_seeds/1
  # DELETE /ezii_seeds/1.json
  def destroy
    @ezii_seed.destroy
    respond_to do |format|
      format.html { redirect_to ezii_seeds_url, notice: 'Ezii seed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ezii_seed
      @ezii_seed = EziiSeed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ezii_seed_params
      params.require(:ezii_seed).permit(:github_link, :gist_link, :description)
    end
end
