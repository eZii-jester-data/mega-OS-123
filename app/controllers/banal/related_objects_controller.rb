# typed: false
class Banal::RelatedObjectsController < ApplicationController
  before_action :set_banal_related_object, only: [:show, :edit, :update, :destroy]

  # GET /banal/related_objects
  # GET /banal/related_objects.json
  def index
    @banal_related_objects = Banal::RelatedObject.all
  end

  # GET /banal/related_objects/1
  # GET /banal/related_objects/1.json
  def show
  end

  # GET /banal/related_objects/new
  def new
    @banal_related_object = Banal::RelatedObject.new
  end

  # GET /banal/related_objects/1/edit
  def edit
  end

  # POST /banal/related_objects
  # POST /banal/related_objects.json
  def create
    @banal_related_object = Banal::RelatedObject.new(banal_related_object_params)

    respond_to do |format|
      if @banal_related_object.save
        format.html { redirect_to @banal_related_object, notice: 'Related object was successfully created.' }
        format.json { render :show, status: :created, location: @banal_related_object }
      else
        format.html { render :new }
        format.json { render json: @banal_related_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /banal/related_objects/1
  # PATCH/PUT /banal/related_objects/1.json
  def update
    respond_to do |format|
      if @banal_related_object.update(banal_related_object_params)
        format.html { redirect_to @banal_related_object, notice: 'Related object was successfully updated.' }
        format.json { render :show, status: :ok, location: @banal_related_object }
      else
        format.html { render :edit }
        format.json { render json: @banal_related_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banal/related_objects/1
  # DELETE /banal/related_objects/1.json
  def destroy
    @banal_related_object.destroy
    respond_to do |format|
      format.html { redirect_to banal_related_objects_url, notice: 'Related object was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banal_related_object
      @banal_related_object = Banal::RelatedObject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def banal_related_object_params
      params.require(:banal_related_object).permit(:object_id, :object_type)
    end
end
