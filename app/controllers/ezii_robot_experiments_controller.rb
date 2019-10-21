# typed: false
class EziiRobotExperimentsController < ApplicationController
  before_action :set_ezii_robot_experiment, only: [:show, :edit, :update, :destroy]

  # GET /ezii_robot_experiments
  # GET /ezii_robot_experiments.json
  def index
    @ezii_robot_experiments = EziiRobotExperiment.all
  end

  # GET /ezii_robot_experiments/1
  # GET /ezii_robot_experiments/1.json
  def show
  end

  # GET /ezii_robot_experiments/new
  def new
    @ezii_robot_experiment = EziiRobotExperiment.new
  end

  # GET /ezii_robot_experiments/1/edit
  def edit
  end

  # POST /ezii_robot_experiments
  # POST /ezii_robot_experiments.json
  def create
    @ezii_robot_experiment = EziiRobotExperiment.new(ezii_robot_experiment_params)

    respond_to do |format|
      if @ezii_robot_experiment.save
        format.html { redirect_to @ezii_robot_experiment, notice: 'Ezii robot experiment was successfully created.' }
        format.json { render :show, status: :created, location: @ezii_robot_experiment }
      else
        format.html { render :new }
        format.json { render json: @ezii_robot_experiment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ezii_robot_experiments/1
  # PATCH/PUT /ezii_robot_experiments/1.json
  def update
    respond_to do |format|
      if @ezii_robot_experiment.update(ezii_robot_experiment_params)
        format.html { redirect_to @ezii_robot_experiment, notice: 'Ezii robot experiment was successfully updated.' }
        format.json { render :show, status: :ok, location: @ezii_robot_experiment }
      else
        format.html { render :edit }
        format.json { render json: @ezii_robot_experiment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ezii_robot_experiments/1
  # DELETE /ezii_robot_experiments/1.json
  def destroy
    @ezii_robot_experiment.destroy
    respond_to do |format|
      format.html { redirect_to ezii_robot_experiments_url, notice: 'Ezii robot experiment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ezii_robot_experiment
      @ezii_robot_experiment = EziiRobotExperiment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ezii_robot_experiment_params
      params.fetch(:ezii_robot_experiment, {})
    end
end
