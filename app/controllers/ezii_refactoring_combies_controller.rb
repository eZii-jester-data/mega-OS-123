# typed: false
class EziiRefactoringCombiesController < ApplicationController
  before_action :set_ezii_refactoring_comby, only: [:show, :edit, :update, :destroy]

  # GET /ezii_refactoring_combies
  # GET /ezii_refactoring_combies.json
  def index
    @ezii_refactoring_combies = EziiRefactoringComby.all
  end

  # GET /ezii_refactoring_combies/1
  # GET /ezii_refactoring_combies/1.json
  def show
  end

  # GET /ezii_refactoring_combies/new
  def new
    @ezii_refactoring_comby = EziiRefactoringComby.new
  end

  # GET /ezii_refactoring_combies/1/edit
  def edit
  end

  # POST /ezii_refactoring_combies
  # POST /ezii_refactoring_combies.json
  def create
    @ezii_refactoring_comby = EziiRefactoringComby.new(ezii_refactoring_comby_params)

    respond_to do |format|
      if @ezii_refactoring_comby.save
        format.html { redirect_to @ezii_refactoring_comby, notice: 'Ezii refactoring comby was successfully created.' }
        format.json { render :show, status: :created, location: @ezii_refactoring_comby }
      else
        format.html { render :new }
        format.json { render json: @ezii_refactoring_comby.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ezii_refactoring_combies/1
  # PATCH/PUT /ezii_refactoring_combies/1.json
  def update
    respond_to do |format|
      if @ezii_refactoring_comby.update(ezii_refactoring_comby_params)
        format.html { redirect_to @ezii_refactoring_comby, notice: 'Ezii refactoring comby was successfully updated.' }
        format.json { render :show, status: :ok, location: @ezii_refactoring_comby }
      else
        format.html { render :edit }
        format.json { render json: @ezii_refactoring_comby.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ezii_refactoring_combies/1
  # DELETE /ezii_refactoring_combies/1.json
  def destroy
    @ezii_refactoring_comby.destroy
    respond_to do |format|
      format.html { redirect_to ezii_refactoring_combies_url, notice: 'Ezii refactoring comby was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ezii_refactoring_comby
      @ezii_refactoring_comby = EziiRefactoringComby.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ezii_refactoring_comby_params
      params.require(:ezii_refactoring_comby).permit(:text, :url)
    end
end
