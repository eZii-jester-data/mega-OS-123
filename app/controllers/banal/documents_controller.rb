# typed: false
class Banal::DocumentsController < ApplicationController
  include ::Banal::RelatedObjectCreationAndLinking
  before_action :set_banal_document, only: [:show, :edit, :update, :destroy]

  # GET /banal/documents
  # GET /banal/documents.json
  def index
    @banal_documents = Banal::Document.joins(:related_object).where('banal_related_objects.object_id' => params[:related_object_id], 'banal_related_objects.object_type' => params[:related_object_type])
  end

  # GET /banal/documents/1
  # GET /banal/documents/1.json
  def show
  end

  # GET /banal/documents/new
  def new
    @banal_document = Banal::Document.new
  end

  # GET /banal/documents/1/edit
  def edit
  end

  # POST /banal/documents
  # POST /banal/documents.json
  def create
    @banal_document = Banal::Document.new(banal_document_params)

    @banal_document.dropbox_file_id = params[:dropbox_file_id]

    file_path = BanalDropboxApi.new.get_file_path_for_id(params[:dropbox_file_id])

    @banal_document.related_object = ::Banal::RelatedObject.create!(object_id: params[:object_id], object_type: params[:object_type])

    @banal_document.global_path = File.join('/dropbox', file_path)

    @banal_document.metadata = ::Banal::Metadatum.create!(metadata_params)

    respond_to do |format|
      if @banal_document.save
        format.html { redirect_to @banal_document, notice: 'Document was successfully created.' }
        format.json { render :show, status: :created, location: @banal_document }
      else
        format.html { render :new }
        format.json { render json: @banal_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /banal/documents/1
  # PATCH/PUT /banal/documents/1.json
  def update
    respond_to do |format|
      if @banal_document.update(banal_document_params)
        format.html { redirect_to @banal_document, notice: 'Document was successfully updated.' }
        format.json { render :show, status: :ok, location: @banal_document }
      else
        format.html { render :edit }
        format.json { render json: @banal_document.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banal/documents/1
  # DELETE /banal/documents/1.json
  def destroy
    @banal_document.destroy
    respond_to do |format|
      format.html { redirect_to banal_documents_url, notice: 'Document was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banal_document
      @banal_document = Banal::Document.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def banal_document_params
      params.require(:banal_document).permit(:global_path, :banal_metadata_id)
    end


    def metadata_params
      params.require(:banal_document).require(:metadata).permit(:sub_category, :category, :language)
    end
end
