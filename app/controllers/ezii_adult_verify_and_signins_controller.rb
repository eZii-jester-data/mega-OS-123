# typed: false
class EziiAdultVerifyAndSigninsController < ApplicationController
  before_action :set_ezii_adult_verify_and_signin, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token
  # GET /ezii_adult_verify_and_signins
  # GET /ezii_adult_verify_and_signins.json
  def index
    @ezii_adult_verify_and_signins = EziiAdultVerifyAndSignin.all
  end

  # GET /ezii_adult_verify_and_signins/1
  # GET /ezii_adult_verify_and_signins/1.json
  def show
  end

  # GET /ezii_adult_verify_and_signins/new
  def new
    @ezii_adult_verify_and_signin = EziiAdultVerifyAndSignin.new
  end

  # GET /ezii_adult_verify_and_signins/1/edit
  # def edit
  # end

  # POST /ezii_adult_verify_and_signins
  # POST /ezii_adult_verify_and_signins.json
  def create
    fail "no adult" unless ENV["EZII_ADULT_PASSWORD"] == params["ezii_adult_password"]
    @ezii_adult_verify_and_signin = EziiAdultVerifyAndSignin.new(ezii_adult_verify_and_signin_params)

    respond_to do |format|
      if @ezii_adult_verify_and_signin.save
        format.html { redirect_to @ezii_adult_verify_and_signin, notice: 'Ezii adult verify and signin was successfully created.' }
        format.json { render :show, status: :created, location: @ezii_adult_verify_and_signin }
      else
        format.html { render :new }
        format.json { render json: @ezii_adult_verify_and_signin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ezii_adult_verify_and_signins/1
  # PATCH/PUT /ezii_adult_verify_and_signins/1.json
  def update
    fail "no adult" unless ENV["EZII_ADULT_PASSWORD"] == params["ezii_adult_password"]

    respond_to do |format|
      if @ezii_adult_verify_and_signin.update(ezii_adult_verify_and_signin_params)
        format.html { redirect_to @ezii_adult_verify_and_signin, notice: 'Ezii adult verify and signin was successfully updated.' }
        format.json { render :show, status: :ok, location: @ezii_adult_verify_and_signin }
      else
        format.html { render :edit }
        format.json { render json: @ezii_adult_verify_and_signin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ezii_adult_verify_and_signins/1
  # DELETE /ezii_adult_verify_and_signins/1.json
  def destroy
    @ezii_adult_verify_and_signin.destroy
    respond_to do |format|
      format.html { redirect_to ezii_adult_verify_and_signins_url, notice: 'Ezii adult verify and signin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ezii_adult_verify_and_signin
      @ezii_adult_verify_and_signin = EziiAdultVerifyAndSignin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ezii_adult_verify_and_signin_params
      params.require(:ezii_adult_verify_and_signin).permit(:user_name, :scm_id, :shell_script_used, :when_will_scm_scl011_be_available_as_rubygem_integration)
    end
end
