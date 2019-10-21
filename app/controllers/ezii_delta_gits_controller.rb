# typed: false
class EziiDeltaGitsController < ApplicationController
  before_action :set_ezii_delta_git, only: [:show, :edit, :update, :destroy]

  # GET /ezii_delta_gits
  # GET /ezii_delta_gits.json
  def index
    @ezii_delta_gits = EziiDeltaGit.all
  end

  # GET /ezii_delta_gits/1
  # GET /ezii_delta_gits/1.json
  def show
  end

  # GET /ezii_delta_gits/new
  def new
    @ezii_delta_git = EziiDeltaGit.new
  end

  # GET /ezii_delta_gits/1/edit
  def edit
  end

  # POST /ezii_delta_gits
  # POST /ezii_delta_gits.json
  def create
    @ezii_delta_git = EziiDeltaGit.new(ezii_delta_git_params)

    respond_to do |format|
      if @ezii_delta_git.save
        format.html { redirect_to @ezii_delta_git, notice: 'Ezii delta git was successfully created.' }
        format.json { render :show, status: :created, location: @ezii_delta_git }
      else
        format.html { render :new }
        format.json { render json: @ezii_delta_git.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ezii_delta_gits/1
  # PATCH/PUT /ezii_delta_gits/1.json
  def update
    respond_to do |format|
      if @ezii_delta_git.update(ezii_delta_git_params)
        format.html { redirect_to @ezii_delta_git, notice: 'Ezii delta git was successfully updated.' }
        format.json { render :show, status: :ok, location: @ezii_delta_git }
      else
        format.html { render :edit }
        format.json { render json: @ezii_delta_git.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ezii_delta_gits/1
  # DELETE /ezii_delta_gits/1.json
  def destroy
    @ezii_delta_git.destroy
    respond_to do |format|
      format.html { redirect_to ezii_delta_gits_url, notice: 'Ezii delta git was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ezii_delta_git
      @ezii_delta_git = EziiDeltaGit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ezii_delta_git_params
      params.require(:ezii_delta_git).permit(:git_commit_created_at, :github_commit_link, :git)
    end
end
