# typed: false
class Partners::GetPaidsController < ApplicationController
  before_action :set_partners_get_paid, only: [:show, :edit, :update, :destroy]

  # GET /partners/get_paids
  # GET /partners/get_paids.json
  def index
    @partners_get_paids = Partners::GetPaid.all
  end

  # GET /partners/get_paids/1
  # GET /partners/get_paids/1.json
  def show
  end

  # GET /partners/get_paids/new
  def new
    @partners_get_paid = Partners::GetPaid.new
  end

  # GET /partners/get_paids/1/edit
  def edit
  end

  # POST /partners/get_paids
  # POST /partners/get_paids.json
  def create
    @partners_get_paid = Partners::GetPaid.new(partners_get_paid_params)

    respond_to do |format|
      if @partners_get_paid.save
        format.html { redirect_to @partners_get_paid, notice: 'Get paid was successfully created.' }
        format.json { render :show, status: :created, location: @partners_get_paid }
      else
        format.html { render :new }
        format.json { render json: @partners_get_paid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /partners/get_paids/1
  # PATCH/PUT /partners/get_paids/1.json
  def update
    respond_to do |format|
      if @partners_get_paid.update(partners_get_paid_params)
        format.html { redirect_to @partners_get_paid, notice: 'Get paid was successfully updated.' }
        format.json { render :show, status: :ok, location: @partners_get_paid }
      else
        format.html { render :edit }
        format.json { render json: @partners_get_paid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /partners/get_paids/1
  # DELETE /partners/get_paids/1.json
  def destroy
    @partners_get_paid.destroy
    respond_to do |format|
      format.html { redirect_to partners_get_paids_url, notice: 'Get paid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_partners_get_paid
      @partners_get_paid = Partners::GetPaid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def partners_get_paid_params
      params.require(:partners_get_paid).permit(:enter_invoice_number, :you_will_receive_this_when_question_mark)
    end
end
