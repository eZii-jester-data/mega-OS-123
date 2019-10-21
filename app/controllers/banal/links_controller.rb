# typed: false
class Banal::LinksController < ApplicationController
  include ::Banal::RelatedObjectCreationAndLinking
  before_action :set_banal_link, only: [:show, :edit, :update, :destroy]

  # GET /banal/links
  # GET /banal/links.json
  def index
    @banal_links = Banal::Link.joins(:related_object).where('banal_related_objects.object_id' => params[:related_object_id], 'banal_related_objects.object_type' => params[:related_object_type])
  end

  # GET /banal/links/1
  # GET /banal/links/1.json
  def show
  end

  # GET /banal/links/new
  def new
    @banal_link = Banal::Link.new
  end

  # GET /banal/links/1/edit
  def edit
  end

  # POST /banal/links
  # POST /banal/links.json
  def create
    @banal_link = Banal::Link.new(banal_link_params)
    @banal_link.related_object = ::Banal::RelatedObject.create!(object_id: params[:object_id], object_type: params[:object_type])

    @banal_link.metadata = ::Banal::Metadatum.create!(metadata_params)

    respond_to do |format|
      if @banal_link.save
        format.html { redirect_to @banal_link, notice: 'Link was successfully created.' }
        format.json { render :show, status: :created, location: @banal_link }
      else
        format.html { render :new }
        format.json { render json: @banal_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /banal/links/1
  # PATCH/PUT /banal/links/1.json
  def update
    respond_to do |format|
      if @banal_link.update(banal_link_params)
        format.html { redirect_to @banal_link, notice: 'Link was successfully updated.' }
        format.json { render :show, status: :ok, location: @banal_link }
      else
        format.html { render :edit }
        format.json { render json: @banal_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banal/links/1
  # DELETE /banal/links/1.json
  def destroy
    @banal_link.destroy
    respond_to do |format|
      format.html { redirect_to banal_links_url, notice: 'Link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banal_link
      @banal_link = Banal::Link.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def banal_link_params
      params.require(:banal_link).permit(:uri, :banal_metadata_id)
    end

    def metadata_params
      params.require(:banal_link).require(:metadata).permit(:category, :language)
    end
end
