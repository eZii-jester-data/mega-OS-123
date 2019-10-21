# typed: false
class MercurialsController < ApplicationController
  before_action :set_mercurial, only: [:show, :edit, :update, :destroy]

  # GET /mercurials
  # GET /mercurials.json
  def index
    @mercurials = Mercurial.all
  end

  # GET /mercurials/1
  # GET /mercurials/1.json
  def show
  end

  # GET /mercurials/new
  def new
    @mercurial = Mercurial.new
  end

  # GET /mercurials/1/edit
  def edit
  end

  # POST /mercurials
  # POST /mercurials.json
  def create
    @mercurial = Mercurial.new(mercurial_params)

    respond_to do |format|
      if @mercurial.save
        format.html { redirect_to @mercurial, notice: 'Mercurial was successfully created.' }
        format.json { render :show, status: :created, location: @mercurial }
      else
        format.html { render :new }
        format.json { render json: @mercurial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mercurials/1
  # PATCH/PUT /mercurials/1.json
  def update
    respond_to do |format|
      if @mercurial.update(mercurial_params)
        format.html { redirect_to @mercurial, notice: 'Mercurial was successfully updated.' }
        format.json { render :show, status: :ok, location: @mercurial }
      else
        format.html { render :edit }
        format.json { render json: @mercurial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mercurials/1
  # DELETE /mercurials/1.json
  def destroy
    @mercurial.destroy
    respond_to do |format|
      format.html { redirect_to mercurials_url, notice: 'Mercurial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mercurial
      @mercurial = Mercurial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mercurial_params
      params.require(:mercurial).permit(:ezii_os_global_path, :detected_app_type, :level)
    end
end
