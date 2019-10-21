# typed: false
class Banal::MetadataController < ApplicationController
  before_action :set_banal_metadatum, only: [:show, :edit, :update, :destroy]

  # GET /banal/metadata
  # GET /banal/metadata.json
  def index
    @banal_metadata = Banal::Metadatum.all
  end

  # GET /banal/metadata/1
  # GET /banal/metadata/1.json
  def show
  end

  # GET /banal/metadata/new
  def new
    @banal_metadatum = Banal::Metadatum.new
  end

  # GET /banal/metadata/1/edit
  def edit
  end

  # POST /banal/metadata
  # POST /banal/metadata.json
  def create
    @banal_metadatum = Banal::Metadatum.new(banal_metadatum_params)

    respond_to do |format|
      if @banal_metadatum.save
        format.html { redirect_to @banal_metadatum, notice: 'Metadatum was successfully created.' }
        format.json { render :show, status: :created, location: @banal_metadatum }
      else
        format.html { render :new }
        format.json { render json: @banal_metadatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /banal/metadata/1
  # PATCH/PUT /banal/metadata/1.json
  def update
    respond_to do |format|
      if @banal_metadatum.update(banal_metadatum_params)
        format.html { redirect_to @banal_metadatum, notice: 'Metadatum was successfully updated.' }
        format.json { render :show, status: :ok, location: @banal_metadatum }
      else
        format.html { render :edit }
        format.json { render json: @banal_metadatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banal/metadata/1
  # DELETE /banal/metadata/1.json
  def destroy
    @banal_metadatum.destroy
    respond_to do |format|
      format.html { redirect_to banal_metadata_url, notice: 'Metadatum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banal_metadatum
      @banal_metadatum = Banal::Metadatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def banal_metadatum_params
      params.require(:banal_metadatum).permit(:category, :language, :sub_category)
    end
end
