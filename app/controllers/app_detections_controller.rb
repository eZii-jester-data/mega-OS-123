# typed: false
class AppDetectionsController < ApplicationController
  before_action :set_app_detection, only: [:show, :edit, :update, :destroy]

  # GET /app_detections
  # GET /app_detections.json
  def index
    @app_detections = AppDetection.all
  end

  # GET /app_detections/1
  # GET /app_detections/1.json
  def show
  end

  # GET /app_detections/new
  def new
    @app_detection = AppDetection.new
  end

  # GET /app_detections/1/edit
  def edit
  end

  # POST /app_detections
  # POST /app_detections.json
  def create
    @app_detection = AppDetection.new(app_detection_params)

    respond_to do |format|
      if @app_detection.save
        format.html { redirect_to @app_detection, notice: 'App detection was successfully created.' }
        format.json { render :show, status: :created, location: @app_detection }
      else
        format.html { render :new }
        format.json { render json: @app_detection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_detections/1
  # PATCH/PUT /app_detections/1.json
  def update
    respond_to do |format|
      if @app_detection.update(app_detection_params)
        format.html { redirect_to @app_detection, notice: 'App detection was successfully updated.' }
        format.json { render :show, status: :ok, location: @app_detection }
      else
        format.html { render :edit }
        format.json { render json: @app_detection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_detections/1
  # DELETE /app_detections/1.json
  def destroy
    @app_detection.destroy
    respond_to do |format|
      format.html { redirect_to app_detections_url, notice: 'App detection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_detection
      @app_detection = AppDetection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def app_detection_params
      params.require(:app_detection).permit(:app_type, :strategy)
    end
end
