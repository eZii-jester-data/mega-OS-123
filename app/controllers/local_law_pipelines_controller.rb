# typed: false
class LocalLawPipelinesController < ApplicationController
  layout 'blank', only: [:show]
  # template nil
  before_action :set_local_law_pipeline, only: [:show, :edit, :update, :destroy]

  # GET /local_law_pipelines
  # GET /local_law_pipelines.json
  def index
    @local_law_pipelines = LocalLawPipeline.all
  end

  # GET /local_law_pipelines/1
  # GET /local_law_pipelines/1.json
  def show
  end

  # GET /local_law_pipelines/new
  def new
    @local_law_pipeline = LocalLawPipeline.new
  end

  # GET /local_law_pipelines/1/edit
  def edit
  end

  # POST /local_law_pipelines
  # POST /local_law_pipelines.json
  def create
    @local_law_pipeline = LocalLawPipeline.new(local_law_pipeline_params)

    respond_to do |format|
      if @local_law_pipeline.save
        format.html { redirect_to @local_law_pipeline, notice: 'Local law pipeline was successfully created.' }
        format.json { render :show, status: :created, location: @local_law_pipeline }
      else
        format.html { render :new }
        format.json { render json: @local_law_pipeline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /local_law_pipelines/1
  # PATCH/PUT /local_law_pipelines/1.json
  def update
    respond_to do |format|
      if @local_law_pipeline.update(local_law_pipeline_params)
        format.html { redirect_to @local_law_pipeline, notice: 'Local law pipeline was successfully updated.' }
        format.json { render :show, status: :ok, location: @local_law_pipeline }
      else
        format.html { render :edit }
        format.json { render json: @local_law_pipeline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /local_law_pipelines/1
  # DELETE /local_law_pipelines/1.json
  def destroy
    @local_law_pipeline.destroy
    respond_to do |format|
      format.html { redirect_to local_law_pipelines_url, notice: 'Local law pipeline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_local_law_pipeline
      @local_law_pipeline = LocalLawPipeline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def local_law_pipeline_params
      params.require(:local_law_pipeline).permit(:title, :paragraph, :local_law_link, :paragraph_number, :book, :local_law_pipeline_id, :content)
    end
end
