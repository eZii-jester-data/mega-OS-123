# typed: false
class CodeLinkTypesController < ApplicationController
  before_action :set_code_link_type, only: [:show, :edit, :update, :destroy]

  # GET /code_link_types
  # GET /code_link_types.json
  def index
    @code_link_types = CodeLinkType.all
  end

  # GET /code_link_types/1
  # GET /code_link_types/1.json
  def show
  end

  # GET /code_link_types/new
  def new
    @code_link_type = CodeLinkType.new
  end

  # GET /code_link_types/1/edit
  def edit
  end

  # POST /code_link_types
  # POST /code_link_types.json
  def create
    @code_link_type = CodeLinkType.new(code_link_type_params)

    respond_to do |format|
      if @code_link_type.save
        format.html { redirect_to @code_link_type, notice: 'Code link type was successfully created.' }
        format.json { render :show, status: :created, location: @code_link_type }
      else
        format.html { render :new }
        format.json { render json: @code_link_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /code_link_types/1
  # PATCH/PUT /code_link_types/1.json
  def update
    respond_to do |format|
      if @code_link_type.update(code_link_type_params)
        format.html { redirect_to @code_link_type, notice: 'Code link type was successfully updated.' }
        format.json { render :show, status: :ok, location: @code_link_type }
      else
        format.html { render :edit }
        format.json { render json: @code_link_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_link_types/1
  # DELETE /code_link_types/1.json
  def destroy
    @code_link_type.destroy
    respond_to do |format|
      format.html { redirect_to code_link_types_url, notice: 'Code link type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_link_type
      @code_link_type = CodeLinkType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def code_link_type_params
      params.require(:code_link_type).permit(:type_description, :type_id)
    end
end
