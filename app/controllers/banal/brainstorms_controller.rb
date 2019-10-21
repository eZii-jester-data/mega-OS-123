# typed: false
class Banal::BrainstormsController < ApplicationController
  before_action :set_banal_brainstorm, only: [:show, :edit, :update, :destroy, :make_project]

  # GET /banal/brainstorms
  # GET /banal/brainstorms.json
  def index
    banal_brainstorms = Banal::Brainstorm

    if params[:only_killed]
      banal_brainstorms = banal_brainstorms.only_deleted
    end

    @banal_brainstorms = banal_brainstorms.all
  end

  # GET /banal/brainstorms/1
  # GET /banal/brainstorms/1.json
  def show
  end

  # GET /banal/brainstorms/new
  def new
    @banal_brainstorm = Banal::Brainstorm.new
  end

  # GET /banal/brainstorms/1/edit
  def edit
  end

  # POST /banal/brainstorms
  # POST /banal/brainstorms.json
  def create
    @banal_brainstorm = Banal::Brainstorm.new(banal_brainstorm_params)

    respond_to do |format|
      if @banal_brainstorm.save
        format.html { redirect_to banal_brainstorms_path + '#form', notice: 'Brainstorm was successfully created.' }
        format.json { render :index, status: :created, location: @banal_brainstorm }
      else
        format.html { render :new }
        format.json { render json: @banal_brainstorm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /banal/brainstorms/1
  # PATCH/PUT /banal/brainstorms/1.json
  def update
    respond_to do |format|
      if @banal_brainstorm.update(banal_brainstorm_params)
        format.html { redirect_to @banal_brainstorm, notice: 'Brainstorm was successfully updated.' }
        format.json { render :show, status: :ok, location: @banal_brainstorm }
      else
        format.html { render :edit }
        format.json { render json: @banal_brainstorm.errors, status: :unprocessable_entity }
      end
    end
  end

  def make_project
    ActiveRecord::Base.transaction do
      project = Banal::Project.create!(
        @banal_brainstorm
         .attributes
         .except('idea', 'deleted_at', 'id')
         .merge({name: @banal_brainstorm.idea}))

      @banal_brainstorm.destroy_fully!

      redirect_to(banal_project_path(project.id))
    end
  end

  # DELETE /banal/brainstorms/1
  # DELETE /banal/brainstorms/1.json
  def destroy
    @banal_brainstorm.destroy
    respond_to do |format|
      format.html { redirect_to banal_brainstorms_url, notice: 'Brainstorm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banal_brainstorm
      @banal_brainstorm = Banal::Brainstorm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def banal_brainstorm_params
      params.require(:banal_brainstorm).permit(:idea, :main_category, :priority, :status, :comments, :idea_owner)
    end
end
