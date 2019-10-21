# typed: false
class EziiIntegrationsController < ApplicationController
  before_action :set_ezii_integration, only: [:show, :edit, :update, :destroy]

  # GET /ezii_integrations
  # GET /ezii_integrations.json
  def index
    @ezii_integrations = EziiIntegration.all
  end

  # GET /ezii_integrations/1
  # GET /ezii_integrations/1.json
  def show
  end

  # GET /ezii_integrations/new
  def new
    @ezii_integration = EziiIntegration.new
  end

  # GET /ezii_integrations/1/edit
  def edit
  end

  # POST /ezii_integrations
  # POST /ezii_integrations.json
  def create
    @ezii_integration = EziiIntegration.new(ezii_integration_params)

    respond_to do |format|
      if @ezii_integration.save
        format.html { redirect_to @ezii_integration, notice: 'Ezii integration was successfully created.' }
        format.json { render :show, status: :created, location: @ezii_integration }
      else
        format.html { render :new }
        format.json { render json: @ezii_integration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ezii_integrations/1
  # PATCH/PUT /ezii_integrations/1.json
  def update
    respond_to do |format|
      if @ezii_integration.update(ezii_integration_params)
        format.html { redirect_to @ezii_integration, notice: 'Ezii integration was successfully updated.' }
        format.json { render :show, status: :ok, location: @ezii_integration }
      else
        format.html { render :edit }
        format.json { render json: @ezii_integration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ezii_integrations/1
  # DELETE /ezii_integrations/1.json
  def destroy
    @ezii_integration.destroy
    respond_to do |format|
      format.html { redirect_to ezii_integrations_url, notice: 'Ezii integration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ezii_integration
      @ezii_integration = EziiIntegration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ezii_integration_params
      params.fetch(:ezii_integration, {})
    end
end
