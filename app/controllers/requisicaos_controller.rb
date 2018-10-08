class RequisicaosController < ApplicationController
  before_action :set_requisicao, only: [:show, :edit, :update, :destroy]

  # GET /requisicaos
  # GET /requisicaos.json
  def index
    @requisicaos = Requisicao.all
  end

  # GET /requisicaos/1
  # GET /requisicaos/1.json
  def show
  end

  # GET /requisicaos/new
  def new
    @requisicao = Requisicao.new
  end

  # GET /requisicaos/1/edit
  def edit
  end

  # POST /requisicaos
  # POST /requisicaos.json
  def create
    @requisicao = Requisicao.new(requisicao_params)

    respond_to do |format|
      if @requisicao.save
        format.html { redirect_to @requisicao, notice: 'Requisicao was successfully created.' }
        format.json { render :show, status: :created, location: @requisicao }
      else
        format.html { render :new }
        format.json { render json: @requisicao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requisicaos/1
  # PATCH/PUT /requisicaos/1.json
  def update
    respond_to do |format|
      if @requisicao.update(requisicao_params)
        format.html { redirect_to @requisicao, notice: 'Requisicao was successfully updated.' }
        format.json { render :show, status: :ok, location: @requisicao }
      else
        format.html { render :edit }
        format.json { render json: @requisicao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requisicaos/1
  # DELETE /requisicaos/1.json
  def destroy
    @requisicao.destroy
    respond_to do |format|
      format.html { redirect_to requisicaos_url, notice: 'Requisicao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requisicao
      @requisicao = Requisicao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def requisicao_params
      params.require(:requisicao).permit(:req_agent, :req_encode, :acao_id)
    end
end
