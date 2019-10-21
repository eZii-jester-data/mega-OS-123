# typed: false
class AddressSearchesController < ApplicationController
  before_action :set_address_search, only: [:show, :edit, :update, :destroy]

  # GET /address_searches
  # GET /address_searches.json
  def index
    @address_searches = AddressSearch.all
  end

  # GET /address_searches/1
  # GET /address_searches/1.json
  def show
    search_url = "https://seeiendom.kartverket.no/api/soekEtterEiendom?searchstring=#{CGI.escape(@address_search.search_string)}"
    @search_result_json = HTTParty.get(search_url)
  end

  # GET /address_searches/new
  def new
    @address_search = AddressSearch.new
  end

  # GET /address_searches/1/edit
  def edit
  end

  # POST /address_searches
  # POST /address_searches.json
  def create
    @address_search = AddressSearch.new(address_search_params)

    respond_to do |format|
      if @address_search.save
        format.html { redirect_to @address_search, notice: 'Address search was successfully created.' }
        format.json { render :show, status: :created, location: @address_search }
      else
        format.html { render :new }
        format.json { render json: @address_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /address_searches/1
  # PATCH/PUT /address_searches/1.json
  def update
    respond_to do |format|
      if @address_search.update(address_search_params)
        format.html { redirect_to @address_search, notice: 'Address search was successfully updated.' }
        format.json { render :show, status: :ok, location: @address_search }
      else
        format.html { render :edit }
        format.json { render json: @address_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /address_searches/1
  # DELETE /address_searches/1.json
  def destroy
    @address_search.destroy
    respond_to do |format|
      format.html { redirect_to address_searches_url, notice: 'Address search was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address_search
      @address_search = AddressSearch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def address_search_params
      params.require(:address_search).permit(:sentiment, :search_string)
    end
end
