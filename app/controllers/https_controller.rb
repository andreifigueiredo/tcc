class HttpsController < ApplicationController
  before_action :set_http, only: [:show, :edit, :update, :destroy]

  # GET /https
  # GET /https.json
  def index
    @https = Http.all
  end

  # GET /https/1
  # GET /https/1.json
  def show
  end

  # GET /https/new
  def new
    @http = Http.new
  end

  # GET /https/1/edit
  def edit
  end

  # POST /https
  # POST /https.json
  def create
    @http = Http.new(http_params)

    respond_to do |format|
      if @http.save
        format.html { redirect_to @http, notice: 'Http was successfully created.' }
        format.json { render :show, status: :created, location: @http }
      else
        format.html { render :new }
        format.json { render json: @http.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /https/1
  # PATCH/PUT /https/1.json
  def update
    respond_to do |format|
      if @http.update(http_params)
        format.html { redirect_to @http, notice: 'Http was successfully updated.' }
        format.json { render :show, status: :ok, location: @http }
      else
        format.html { render :edit }
        format.json { render json: @http.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /https/1
  # DELETE /https/1.json
  def destroy
    @http.destroy
    respond_to do |format|
      format.html { redirect_to https_url, notice: 'Http was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_http
      @http = Http.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def http_params
      params.require(:http).permit(:view_referer, :view_url, :view_method, :req_id)
    end
end
