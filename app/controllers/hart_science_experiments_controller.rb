# typed: false
class HartScienceExperimentsController < ApplicationController
  before_action :set_hart_science_experiment, only: [:show, :edit, :update, :destroy]

  # GET /hart_science_experiments
  # GET /hart_science_experiments.json
  def index
    @hart_science_experiments = HartScienceExperiment.all
  end

  # GET /hart_science_experiments/1
  # GET /hart_science_experiments/1.json
  def show
  end

  # GET /hart_science_experiments/new
  def new
    @hart_science_experiment = HartScienceExperiment.new
  end

  # GET /hart_science_experiments/1/edit
  def edit
  end

  # POST /hart_science_experiments
  # POST /hart_science_experiments.json
  def create
    @hart_science_experiment = HartScienceExperiment.new(hart_science_experiment_params)

    respond_to do |format|
      if @hart_science_experiment.save
        format.html { redirect_to @hart_science_experiment, notice: 'Hart science experiment was successfully created.' }
        format.json { render :show, status: :created, location: @hart_science_experiment }
      else
        format.html { render :new }
        format.json { render json: @hart_science_experiment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hart_science_experiments/1
  # PATCH/PUT /hart_science_experiments/1.json
  def update
    respond_to do |format|
      if @hart_science_experiment.update(hart_science_experiment_params)
        format.html { redirect_to @hart_science_experiment, notice: 'Hart science experiment was successfully updated.' }
        format.json { render :show, status: :ok, location: @hart_science_experiment }
      else
        format.html { render :edit }
        format.json { render json: @hart_science_experiment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hart_science_experiments/1
  # DELETE /hart_science_experiments/1.json
  def destroy
    @hart_science_experiment.destroy
    respond_to do |format|
      format.html { redirect_to hart_science_experiments_url, notice: 'Hart science experiment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hart_science_experiment
      @hart_science_experiment = HartScienceExperiment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hart_science_experiment_params
      params.require(:hart_science_experiment).permit(:text, :url)
    end
end
