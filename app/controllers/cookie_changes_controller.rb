# typed: false
class CookieChangesController < ApplicationController
  before_action :set_cookie_change, only: [:show, :edit, :update, :destroy]

  skip_before_action :verify_authenticity_token

  # GET /cookie_changes
  # GET /cookie_changes.json
  def index
    @cookie_changes = CookieChange.all
  end

  # GET /cookie_changes/1
  # GET /cookie_changes/1.json
  def show
  end

  # GET /cookie_changes/new
  def new
    @cookie_change = CookieChange.new
  end

  # GET /cookie_changes/1/edit
  def edit
  end

  # POST /cookie_changes
  # POST /cookie_changes.json
  def create
    @cookie_change = CookieChange.new(cookie_change_params)

    respond_to do |format|
      if @cookie_change.save
        cookies[@cookie_change.identifier] = @cookie_change.value

        format.html { redirect_to @cookie_change, notice: 'Cookie change was successfully created.' }
        format.json { render :show, status: :created, location: @cookie_change }
      else
        format.html { render :new }
        format.json { render json: @cookie_change.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cookie_changes/1
  # PATCH/PUT /cookie_changes/1.json
  def update
    respond_to do |format|
      if @cookie_change.update(cookie_change_params)
        format.html { redirect_to @cookie_change, notice: 'Cookie change was successfully updated.' }
        format.json { render :show, status: :ok, location: @cookie_change }
      else
        format.html { render :edit }
        format.json { render json: @cookie_change.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cookie_changes/1
  # DELETE /cookie_changes/1.json
  def destroy
    @cookie_change.destroy
    respond_to do |format|
      format.html { redirect_to cookie_changes_url, notice: 'Cookie change was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cookie_change
      @cookie_change = CookieChange.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cookie_change_params
      params.require(:cookie_change).permit(:identifier, :value)
    end
end
