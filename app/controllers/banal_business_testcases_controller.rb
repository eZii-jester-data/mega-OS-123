# typed: false
class BanalBusinessTestcasesController < ApplicationController
  before_action :set_banal_business_testcase, only: [:show, :edit, :update, :destroy]

  # GET /banal_business_testcases
  # GET /banal_business_testcases.json
  def index
    @banal_business_testcases = BanalBusinessTestcase.all
  end

  # GET /banal_business_testcases/1
  # GET /banal_business_testcases/1.json
  def show
  end

  # GET /banal_business_testcases/new
  def new
    @banal_business_testcase = BanalBusinessTestcase.new
  end

  # GET /banal_business_testcases/1/edit
  def edit
  end

  # POST /banal_business_testcases
  # POST /banal_business_testcases.json
  def create
    @banal_business_testcase = BanalBusinessTestcase.new(banal_business_testcase_params)

    respond_to do |format|
      if @banal_business_testcase.save
        format.html { redirect_to @banal_business_testcase, notice: 'Banal business testcase was successfully created.' }
        format.json { render :show, status: :created, location: @banal_business_testcase }
      else
        format.html { render :new }
        format.json { render json: @banal_business_testcase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /banal_business_testcases/1
  # PATCH/PUT /banal_business_testcases/1.json
  def update
    respond_to do |format|
      if @banal_business_testcase.update(banal_business_testcase_params)
        format.html { redirect_to @banal_business_testcase, notice: 'Banal business testcase was successfully updated.' }
        format.json { render :show, status: :ok, location: @banal_business_testcase }
      else
        format.html { render :edit }
        format.json { render json: @banal_business_testcase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banal_business_testcases/1
  # DELETE /banal_business_testcases/1.json
  def destroy
    @banal_business_testcase.destroy
    respond_to do |format|
      format.html { redirect_to banal_business_testcases_url, notice: 'Banal business testcase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banal_business_testcase
      @banal_business_testcase = BanalBusinessTestcase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def banal_business_testcase_params
      params.require(:banal_business_testcase).permit(:org_id, :name, :metainfo, :link)
    end
end
