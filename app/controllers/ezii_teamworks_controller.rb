# typed: false
class EziiTeamworksController < ApplicationController
  before_action :set_ezii_teamwork, only: [:show, :edit, :update, :destroy]

  # GET /ezii_teamworks
  # GET /ezii_teamworks.json
  def index
    @ezii_teamworks = EziiTeamwork.all
  end

  # GET /ezii_teamworks/1
  # GET /ezii_teamworks/1.json
  def show
  end

  # GET /ezii_teamworks/new
  def new
    @ezii_teamwork = EziiTeamwork.new
  end

  # GET /ezii_teamworks/1/edit
  def edit
  end

  # POST /ezii_teamworks
  # POST /ezii_teamworks.json
  def create
    @ezii_teamwork = EziiTeamwork.new(ezii_teamwork_params)

    respond_to do |format|
      if @ezii_teamwork.save
        format.html { redirect_to @ezii_teamwork, notice: 'Ezii teamwork was successfully created.' }
        format.json { render :show, status: :created, location: @ezii_teamwork }
      else
        format.html { render :new }
        format.json { render json: @ezii_teamwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ezii_teamworks/1
  # PATCH/PUT /ezii_teamworks/1.json
  def update
    respond_to do |format|
      if @ezii_teamwork.update(ezii_teamwork_params)
        format.html { redirect_to @ezii_teamwork, notice: 'Ezii teamwork was successfully updated.' }
        format.json { render :show, status: :ok, location: @ezii_teamwork }
      else
        format.html { render :edit }
        format.json { render json: @ezii_teamwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ezii_teamworks/1
  # DELETE /ezii_teamworks/1.json
  def destroy
    @ezii_teamwork.destroy
    respond_to do |format|
      format.html { redirect_to ezii_teamworks_url, notice: 'Ezii teamwork was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ezii_teamwork
      @ezii_teamwork = EziiTeamwork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ezii_teamwork_params
      params.require(:ezii_teamwork).permit(:employee_graph_svg_text, :medium_link, :ezii_game_x_zip_download_link)
    end
end
