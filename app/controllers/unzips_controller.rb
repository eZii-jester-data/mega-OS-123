# typed: false
class UnzipsController < ApplicationController
  before_action :set_unzip, only: [:show, :edit, :update, :destroy]

  # GET /unzips
  # GET /unzips.json
  def index
    @unzips = Unzip.all
  end

  # GET /unzips/1
  # GET /unzips/1.json
  def show
  end

  # GET /unzips/new
  def new
    @unzip = Unzip.new
  end

  # GET /unzips/1/edit
  def edit
  end

  # POST /unzips
  # POST /unzips.json
  def create
    @unzip = Unzip.new(unzip_params)
    @unzip.run_on_current_host__unsafe

    # byebug
    respond_to do |format|
      if @unzip.save
        format.html { redirect_to @unzip, notice: 'Unzip was successfully created.' }
        format.json { render :show, status: :created, location: @unzip }
      else
        format.html { render :new }
        format.json { render json: @unzip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unzips/1
  # PATCH/PUT /unzips/1.json
  def update
    respond_to do |format|
      if @unzip.update(unzip_params)
        format.html { redirect_to @unzip, notice: 'Unzip was successfully updated.' }
        format.json { render :show, status: :ok, location: @unzip }
      else
        format.html { render :edit }
        format.json { render json: @unzip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unzips/1
  # DELETE /unzips/1.json
  def destroy
    @unzip.destroy
    respond_to do |format|
      format.html { redirect_to unzips_url, notice: 'Unzip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unzip
      @unzip = Unzip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unzip_params
      params.require(:unzip).permit(:zip_file_path)
    end
end
