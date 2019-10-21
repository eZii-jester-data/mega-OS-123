# typed: false
class CodeChangeRequestsController < ApplicationController
  before_action :set_code_change_request, only: [:show, :edit, :update, :destroy]

  skip_before_action :verify_authenticity_token
  # GET /code_change_requests
  # GET /code_change_requests.json
  def index
    @code_change_requests = CodeChangeRequest.all
  end

  # GET /code_change_requests/1
  # GET /code_change_requests/1.json
  def show
  end

  # GET /code_change_requests/new
  def new
    @code_change_request = CodeChangeRequest.new
  end

  # GET /code_change_requests/1/edit
  def edit
  end

  # POST /code_change_requests
  # POST /code_change_requests.json
  def create
    @code_change_request = CodeChangeRequest.new(code_change_request_params)

    respond_to do |format|
      if @code_change_request.save
        format.html { redirect_to @code_change_request, notice: 'Code change request was successfully created.' }
        format.json { render :show, status: :created, location: @code_change_request }
      else
        format.html { render :new }
        format.json { render json: @code_change_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /code_change_requests/1
  # PATCH/PUT /code_change_requests/1.json
  def update
    respond_to do |format|
      if @code_change_request.update(code_change_request_params)
        format.html { redirect_to @code_change_request, notice: 'Code change request was successfully updated.' }
        format.json { render :show, status: :ok, location: @code_change_request }
      else
        format.html { render :edit }
        format.json { render json: @code_change_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_change_requests/1
  # DELETE /code_change_requests/1.json
  def destroy
    @code_change_request.destroy
    respond_to do |format|
      format.html { redirect_to code_change_requests_url, notice: 'Code change request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_change_request
      @code_change_request = CodeChangeRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def code_change_request_params
      params.require(:code_change_request).permit(:text)
    end
end
