# typed: false
class StickRecordsController < ApplicationController
  before_action :set_stick_record, only: [:show, :edit, :update, :destroy]

  # GET /stick_records
  # GET /stick_records.json
  def index
    @stick_records = StickRecord.all
  end

  # GET /stick_records/1
  # GET /stick_records/1.json
  def show
  end

  # GET /stick_records/new
  def new
    @stick_record = StickRecord.new
  end

  # GET /stick_records/1/edit
  def edit
  end

  # POST /stick_records
  # POST /stick_records.json
  def create
    @stick_record = StickRecord.new(stick_record_params)

    respond_to do |format|
      if @stick_record.save
        format.html { redirect_to @stick_record, notice: 'Stick record was successfully created.' }
        format.json { render :show, status: :created, location: @stick_record }
      else
        format.html { render :new }
        format.json { render json: @stick_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stick_records/1
  # PATCH/PUT /stick_records/1.json
  def update
    respond_to do |format|
      if @stick_record.update(stick_record_params)
        format.html { redirect_to @stick_record, notice: 'Stick record was successfully updated.' }
        format.json { render :show, status: :ok, location: @stick_record }
      else
        format.html { render :edit }
        format.json { render json: @stick_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stick_records/1
  # DELETE /stick_records/1.json
  def destroy
    @stick_record.destroy
    respond_to do |format|
      format.html { redirect_to stick_records_url, notice: 'Stick record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stick_record
      @stick_record = StickRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stick_record_params
      params.require(:stick_record).permit(:identifier, :modifiers)
    end
end
