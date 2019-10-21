# typed: false
class CodeLinkBatchesController < ApplicationController
  before_action :set_code_link_batch, only: [:show, :edit, :update, :destroy]

  # GET /code_link_batches
  # GET /code_link_batches.json
  def index
    @code_link_batches = CodeLinkBatch.all
  end

  # GET /code_link_batches/1
  # GET /code_link_batches/1.json
  def show
  end

  # GET /code_link_batches/new
  def new
    @code_link_batch = CodeLinkBatch.new
  end

  # GET /code_link_batches/1/edit
  def edit
  end

  # POST /code_link_batches
  # POST /code_link_batches.json
  def create
    @code_link_batch = CodeLinkBatch.new(code_link_batch_params)

    respond_to do |format|
      if @code_link_batch.save
        format.html { redirect_to @code_link_batch, notice: 'Code link batch was successfully created.' }
        format.json { render :show, status: :created, location: @code_link_batch }
      else
        format.html { render :new }
        format.json { render json: @code_link_batch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /code_link_batches/1
  # PATCH/PUT /code_link_batches/1.json
  def update
    respond_to do |format|
      if @code_link_batch.update(code_link_batch_params)
        format.html { redirect_to @code_link_batch, notice: 'Code link batch was successfully updated.' }
        format.json { render :show, status: :ok, location: @code_link_batch }
      else
        format.html { render :edit }
        format.json { render json: @code_link_batch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_link_batches/1
  # DELETE /code_link_batches/1.json
  def destroy
    @code_link_batch.destroy
    respond_to do |format|
      format.html { redirect_to code_link_batches_url, notice: 'Code link batch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_link_batch
      @code_link_batch = CodeLinkBatch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def code_link_batch_params
      params.require(:code_link_batch).permit(:description, :code_link_id)
    end
end
