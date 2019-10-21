# typed: false
class EziiGeminatorsController < ApplicationController
  before_action :set_ezii_geminator, only: [:show, :edit, :update, :destroy]

  # GET /ezii_geminators
  # GET /ezii_geminators.json
  def index
    @ezii_geminators = EziiGeminator.all
  end

  # GET /ezii_geminators/1
  # GET /ezii_geminators/1.json
  def show
  end

  # GET /ezii_geminators/new
  def new
    @ezii_geminator = EziiGeminator.new
  end

  # GET /ezii_geminators/1/edit
  def edit
  end

  # POST /ezii_geminators
  # POST /ezii_geminators.json
  def create
    @ezii_geminator = EziiGeminator.new(ezii_geminator_params)

    respond_to do |format|
      if @ezii_geminator.save
        format.html { redirect_to @ezii_geminator, notice: 'Ezii geminator was successfully created.' }
        format.json { render :show, status: :created, location: @ezii_geminator }
      else
        format.html { render :new }
        format.json { render json: @ezii_geminator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ezii_geminators/1
  # PATCH/PUT /ezii_geminators/1.json
  def update
    respond_to do |format|
      if @ezii_geminator.update(ezii_geminator_params)
        format.html { redirect_to @ezii_geminator, notice: 'Ezii geminator was successfully updated.' }
        format.json { render :show, status: :ok, location: @ezii_geminator }
      else
        format.html { render :edit }
        format.json { render json: @ezii_geminator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ezii_geminators/1
  # DELETE /ezii_geminators/1.json
  def destroy
    @ezii_geminator.destroy
    respond_to do |format|
      format.html { redirect_to ezii_geminators_url, notice: 'Ezii geminator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ezii_geminator
      @ezii_geminator = EziiGeminator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ezii_geminator_params
      params.require(:ezii_geminator).permit(:graphql_query_text, :url_text)
    end
end
