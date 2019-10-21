# typed: false
class BigDiscreteModulesController < ApplicationController
  before_action :set_big_discrete_module, only: [:show, :edit, :update, :destroy]

  # GET /big_discrete_modules
  # GET /big_discrete_modules.json
  def index
    @big_discrete_modules = BigDiscreteModule.all
  end

  # GET /big_discrete_modules/1
  # GET /big_discrete_modules/1.json
  def show
  end

  # GET /big_discrete_modules/new
  def new
    @big_discrete_module = BigDiscreteModule.new
  end

  # GET /big_discrete_modules/1/edit
  def edit
  end

  # POST /big_discrete_modules
  # POST /big_discrete_modules.json
  def create
    @big_discrete_module = BigDiscreteModule.new(big_discrete_module_params)

    respond_to do |format|
      if @big_discrete_module.save
        format.html { redirect_to @big_discrete_module, notice: 'Big discrete module was successfully created.' }
        format.json { render :show, status: :created, location: @big_discrete_module }
      else
        format.html { render :new }
        format.json { render json: @big_discrete_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /big_discrete_modules/1
  # PATCH/PUT /big_discrete_modules/1.json
  def update
    respond_to do |format|
      if @big_discrete_module.update(big_discrete_module_params)
        format.html { redirect_to @big_discrete_module, notice: 'Big discrete module was successfully updated.' }
        format.json { render :show, status: :ok, location: @big_discrete_module }
      else
        format.html { render :edit }
        format.json { render json: @big_discrete_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /big_discrete_modules/1
  # DELETE /big_discrete_modules/1.json
  def destroy
    @big_discrete_module.destroy
    respond_to do |format|
      format.html { redirect_to big_discrete_modules_url, notice: 'Big discrete module was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_big_discrete_module
      @big_discrete_module = BigDiscreteModule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def big_discrete_module_params
      params.require(:big_discrete_module).permit(:why, :how, :what, :when)
    end
end
