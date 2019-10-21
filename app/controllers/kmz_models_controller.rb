# typed: false
class KmzModelsController < ApplicationController
  before_action :set_kmz_model, only: [:show, :edit, :update, :destroy]

  # GET /kmz_models
  # GET /kmz_models.json
  def index
    @kmz_models = KmzModel.all
  end

  # GET /kmz_models/1
  # GET /kmz_models/1.json
  def show
    respond_to do |format|
      format.kmz do
        send_file EziiOsPath.new(@kmz_model.global_path).file_system_path
      end
    end
  end

  # GET /kmz_models/new
  def new
    @kmz_model = KmzModel.new
  end

  # GET /kmz_models/1/edit
  def edit
  end

  # POST /kmz_models
  # POST /kmz_models.json
  def create
    @kmz_model = KmzModel.new(kmz_model_params)

    respond_to do |format|
      if @kmz_model.save
        format.html { redirect_to @kmz_model, notice: 'Kmz model was successfully created.' }
        format.json { render :show, status: :created, location: @kmz_model }
      else
        format.html { render :new }
        format.json { render json: @kmz_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kmz_models/1
  # PATCH/PUT /kmz_models/1.json
  def update
    respond_to do |format|
      if @kmz_model.update(kmz_model_params)
        format.html { redirect_to @kmz_model, notice: 'Kmz model was successfully updated.' }
        format.json { render :show, status: :ok, location: @kmz_model }
      else
        format.html { render :edit }
        format.json { render json: @kmz_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kmz_models/1
  # DELETE /kmz_models/1.json
  def destroy
    @kmz_model.destroy
    respond_to do |format|
      format.html { redirect_to kmz_models_url, notice: 'Kmz model was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kmz_model
      @kmz_model = KmzModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kmz_model_params
      params.require(:kmz_model).permit(:description, :global_path)
    end
end
