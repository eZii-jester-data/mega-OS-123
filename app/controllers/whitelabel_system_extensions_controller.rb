# typed: false
class WhitelabelSystemExtensionsController < ApplicationController
  before_action :set_whitelabel_system_extension, only: [:show, :edit, :update, :destroy]

  # GET /whitelabel_system_extensions
  # GET /whitelabel_system_extensions.json
  def index
    @whitelabel_system_extensions = WhitelabelSystemExtension.all
  end

  # GET /whitelabel_system_extensions/1
  # GET /whitelabel_system_extensions/1.json
  def show
  end

  # GET /whitelabel_system_extensions/new
  def new
    @whitelabel_system_extension = WhitelabelSystemExtension.new
  end

  # GET /whitelabel_system_extensions/1/edit
  def edit
  end

  # POST /whitelabel_system_extensions
  # POST /whitelabel_system_extensions.json
  def create
    @whitelabel_system_extension = WhitelabelSystemExtension.new(whitelabel_system_extension_params)

    respond_to do |format|
      if @whitelabel_system_extension.save
        format.html { redirect_to @whitelabel_system_extension, notice: 'Whitelabel system extension was successfully created.' }
        format.json { render :show, status: :created, location: @whitelabel_system_extension }
      else
        format.html { render :new }
        format.json { render json: @whitelabel_system_extension.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /whitelabel_system_extensions/1
  # PATCH/PUT /whitelabel_system_extensions/1.json
  def update
    respond_to do |format|
      if @whitelabel_system_extension.update(whitelabel_system_extension_params)
        format.html { redirect_to @whitelabel_system_extension, notice: 'Whitelabel system extension was successfully updated.' }
        format.json { render :show, status: :ok, location: @whitelabel_system_extension }
      else
        format.html { render :edit }
        format.json { render json: @whitelabel_system_extension.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whitelabel_system_extensions/1
  # DELETE /whitelabel_system_extensions/1.json
  def destroy
    @whitelabel_system_extension.destroy
    respond_to do |format|
      format.html { redirect_to whitelabel_system_extensions_url, notice: 'Whitelabel system extension was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_whitelabel_system_extension
      @whitelabel_system_extension = WhitelabelSystemExtension.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def whitelabel_system_extension_params
      params.require(:whitelabel_system_extension).permit(:rfc, :comment_id)
    end
end
