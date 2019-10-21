# typed: false
class Banal::ProjectsController < ApplicationController
  before_action :set_banal_project, only: [:show, :edit, :update, :destroy]

  # GET /banal/projects
  # GET /banal/projects.json
  def index
    @banal_projects = Banal::Project.all
  end

  # GET /banal/projects/1
  # GET /banal/projects/1.json
  def show
  end

  # GET /banal/projects/new
  def new
    @banal_project = Banal::Project.new
  end

  # GET /banal/projects/1/edit
  def edit
  end

  # POST /banal/projects
  # POST /banal/projects.json
  def create
    @banal_project = Banal::Project.new(banal_project_params)

    respond_to do |format|
      if @banal_project.save
        format.html { redirect_to @banal_project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @banal_project }
      else
        format.html { render :new }
        format.json { render json: @banal_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /banal/projects/1
  # PATCH/PUT /banal/projects/1.json
  def update
    respond_to do |format|
      if @banal_project.update(banal_project_params)
        format.html { redirect_to @banal_project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @banal_project }
      else
        format.html { render :edit }
        format.json { render json: @banal_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banal/projects/1
  # DELETE /banal/projects/1.json
  def destroy
    @banal_project.destroy
    respond_to do |format|
      format.html { redirect_to banal_projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banal_project
      @banal_project = Banal::Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def banal_project_params
      params.require(:banal_project).permit(:name, :main_category, :priority, :status, :launch_date, :comments, :project_manager, :idea_owner, :dev_budget_cost)
    end
end
