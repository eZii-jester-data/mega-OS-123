# typed: false
class AppDetectionStrategiesController < ApplicationController
  before_action :set_app_detection_strategy, only: [:show, :edit, :update, :destroy]

  # GET /app_detection_strategies
  # GET /app_detection_strategies.json
  def index
    @app_detection_strategies = AppDetectionStrategy.all
  end

  # GET /app_detection_strategies/1
  # GET /app_detection_strategies/1.json
  def show
  end

  # GET /app_detection_strategies/new
  def new
    @app_detection_strategy = AppDetectionStrategy.new
  end

  # GET /app_detection_strategies/1/edit
  def edit
  end

  # POST /app_detection_strategies
  # POST /app_detection_strategies.json
  def create
    @app_detection_strategy = AppDetectionStrategy.new(app_detection_strategy_params)

    respond_to do |format|
      if @app_detection_strategy.save
        format.html { redirect_to @app_detection_strategy, notice: 'App detection strategy was successfully created.' }
        format.json { render :show, status: :created, location: @app_detection_strategy }
      else
        format.html { render :new }
        format.json { render json: @app_detection_strategy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /app_detection_strategies/1
  # PATCH/PUT /app_detection_strategies/1.json
  def update
    respond_to do |format|
      if @app_detection_strategy.update(app_detection_strategy_params)
        format.html { redirect_to @app_detection_strategy, notice: 'App detection strategy was successfully updated.' }
        format.json { render :show, status: :ok, location: @app_detection_strategy }
      else
        format.html { render :edit }
        format.json { render json: @app_detection_strategy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /app_detection_strategies/1
  # DELETE /app_detection_strategies/1.json
  def destroy
    @app_detection_strategy.destroy
    respond_to do |format|
      format.html { redirect_to app_detection_strategies_url, notice: 'App detection strategy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_app_detection_strategy
      @app_detection_strategy = AppDetectionStrategy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def app_detection_strategy_params
      params.require(:app_detection_strategy).permit(:app_detection_id, :implementation_in_ruby_dsl)
    end
end
