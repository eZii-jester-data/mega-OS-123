# typed: false
class BanalComplexesController < ApplicationController
  before_action :set_banal_complex, only: [:show, :edit, :update, :destroy]

  # GET /banal_complexes
  # GET /banal_complexes.json
  def index
    @banal_complexes = BanalComplex.all
  end

  # GET /banal_complexes/1
  # GET /banal_complexes/1.json
  def show
  end

  # GET /banal_complexes/new
  def new
    @banal_complex = BanalComplex.new
  end

  # GET /banal_complexes/1/edit
  def edit
  end

  # POST /banal_complexes
  # POST /banal_complexes.json
  def create
    @banal_complex = BanalComplex.new(banal_complex_params)

    respond_to do |format|
      if @banal_complex.save
        format.html { redirect_to banal_complexes_path, notice: 'Banal complex was successfully created.' }
        format.json { render :show, status: :created, location: @banal_complex }
      else
        format.html { render :new }
        format.json { render json: @banal_complex.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /banal_complexes/1
  # PATCH/PUT /banal_complexes/1.json
  def update
    respond_to do |format|
      if @banal_complex.update(banal_complex_params)
        format.html { redirect_to @banal_complex, notice: 'Banal complex was successfully updated.' }
        format.json { render :show, status: :ok, location: @banal_complex }
      else
        format.html { render :edit }
        format.json { render json: @banal_complex.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banal_complexes/1
  # DELETE /banal_complexes/1.json
  def destroy
    @banal_complex.destroy
    respond_to do |format|
      format.html { redirect_to banal_complexes_url, notice: 'Banal complex was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banal_complex
      @banal_complex = BanalComplex.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def banal_complex_params
      params.require(:banal_complex).permit(:weight, :parent_id, :name)
    end
end
