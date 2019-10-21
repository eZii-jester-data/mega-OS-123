# typed: false
class BasecampIntegrationsController < ApplicationController
  http_basic_authenticate_with name: "USER", password: ENV['PASSWORD'] || Rails.application.credentials.password

  before_action :set_basecamp_integration, only: [:show, :edit, :update, :destroy]

  # GET /basecamp_integrations
  # GET /basecamp_integrations.json
  def index
    @basecamp_integrations = BasecampIntegration.all
  end

  # GET /basecamp_integrations/1
  # GET /basecamp_integrations/1.json
  def show
  end

  # GET /basecamp_integrations/new
  def new
    @basecamp_integration = BasecampIntegration.new
  end

  # GET /basecamp_integrations/1/edit
  def edit
  end

  # POST /basecamp_integrations
  # POST /basecamp_integrations.json
  def create
    @basecamp_integration = BasecampIntegration.new(basecamp_integration_params)

    respond_to do |format|
      if @basecamp_integration.save
        format.html { redirect_to @basecamp_integration, notice: 'Basecamp integration was successfully created.' }
        format.json { render :show, status: :created, location: @basecamp_integration }
      else
        format.html { render :new }
        format.json { render json: @basecamp_integration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /basecamp_integrations/1
  # PATCH/PUT /basecamp_integrations/1.json
  def update
    respond_to do |format|
      if @basecamp_integration.update(basecamp_integration_params)
        format.html { redirect_to @basecamp_integration, notice: 'Basecamp integration was successfully updated.' }
        format.json { render :show, status: :ok, location: @basecamp_integration }
      else
        format.html { render :edit }
        format.json { render json: @basecamp_integration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /basecamp_integrations/1
  # DELETE /basecamp_integrations/1.json
  def destroy
    @basecamp_integration.destroy
    respond_to do |format|
      format.html { redirect_to basecamp_integrations_url, notice: 'Basecamp integration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_basecamp_integration
      @basecamp_integration = BasecampIntegration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def basecamp_integration_params
      params.require(:basecamp_integration).permit(:description, :code)
    end
end
