# typed: false
class CodeLinksController < ApplicationController
  before_action :set_code_link, only: [:show, :edit, :update, :destroy]

  # GET /code_links
  # GET /code_links.json
  def index
    @code_links = CodeLink.all
  end

  # GET /code_links/1
  # GET /code_links/1.json
  def show
  end

  # GET /code_links/new
  def new
    @code_link = CodeLink.new
  end

  # GET /code_links/1/edit
  def edit
  end

  # POST /code_links
  # POST /code_links.json
  def create
    @code_link = CodeLink.new(code_link_params)

    respond_to do |format|
      if @code_link.save
        format.html { redirect_to @code_link, notice: 'Code link was successfully created.' }
        format.json { render :show, status: :created, location: @code_link }
      else
        format.html { render :new }
        format.json { render json: @code_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /code_links/1
  # PATCH/PUT /code_links/1.json
  def update
    respond_to do |format|
      if @code_link.update(code_link_params)
        format.html { redirect_to @code_link, notice: 'Code link was successfully updated.' }
        format.json { render :show, status: :ok, location: @code_link }
      else
        format.html { render :edit }
        format.json { render json: @code_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /code_links/1
  # DELETE /code_links/1.json
  def destroy
    @code_link.destroy
    respond_to do |format|
      format.html { redirect_to code_links_url, notice: 'Code link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_code_link
      @code_link = CodeLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def code_link_params
      params.require(:code_link).permit(:link, :code_link_type_id, :description)
    end
end
