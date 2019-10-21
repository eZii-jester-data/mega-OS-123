# typed: false
class AppDetectionAnalysesController < ApplicationController
  before_action :set_app_detection_analysis, only: [:show, :edit, :update, :destroy]

  # GET /app_detection_analyses
  # GET /app_detection_analyses.json
  def index
    @app_detection_analyses = AppDetectionAnalysis.all
  end

  # GET /app_detection_analyses/1
  # GET /app_detection_analyses/1.json
  def show
  end

  # GET /app_detection_analyses/new
  def new
    @app_detection_analysis = AppDetectionAnalysis.new
  end

  # GET /app_detection_analyses/1/edit
  def edit
  end

  # POST /app_detection_analyses
  # POST /app_detection_analyses.json
  def create
    @app_detection_analysis = AppDetectionAnalysis.new(app_detection_analysis_params)

    respond_to do |format|
      if @app_detection_analysis.save
        format.html { redirect_to @app_detection_analysis, notice: 'App detection analysis was successfully created.' }
        format.json { render :show, status: :created, location: @app_detection_analysis }
      else
        format.html { render :new }
        format.json { render json: @app_detection_analysis.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_detection_analyses/1
  # PATCH/PUT /app_detection_analyses/1.json
  def update
    respond_to do |format|
      if @app_detection_analysis.update(app_detection_analysis_params)
        format.html { redirect_to @app_detection_analysis, notice: 'App detection analysis was successfully updated.' }
        format.json { render :show, status: :ok, location: @app_detection_analysis }
      else
        format.html { render :edit }
        format.json { render json: @app_detection_analysis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_detection_analyses/1
  # DELETE /app_detection_analyses/1.json
  def destroy
    @app_detection_analysis.destroy
    respond_to do |format|
      format.html { redirect_to app_detection_analyses_url, notice: 'App detection analysis was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_detection_analysis
      @app_detection_analysis = AppDetectionAnalysis.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def app_detection_analysis_params
      params.require(:app_detection_analysis).permit(:app_detection_id, :confidence)
    end
end
