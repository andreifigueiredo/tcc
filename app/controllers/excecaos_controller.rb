class ExcecaosController < ApplicationController
  before_action :set_excecao, only: [:show, :edit, :update, :destroy]

  # GET /excecaos
  # GET /excecaos.json
  def index
    @excecaos = Excecao.all
  end

  # GET /excecaos/1
  # GET /excecaos/1.json
  def show
  end

  # GET /excecaos/new
  def new
    @excecao = Excecao.new
  end

  # GET /excecaos/1/edit
  def edit
  end

  # POST /excecaos
  # POST /excecaos.json
  def create
    @excecao = Excecao.new(excecao_params)

    respond_to do |format|
      if @excecao.save
        format.html { redirect_to @excecao, notice: 'Excecao was successfully created.' }
        format.json { render :show, status: :created, location: @excecao }
      else
        format.html { render :new }
        format.json { render json: @excecao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /excecaos/1
  # PATCH/PUT /excecaos/1.json
  def update
    respond_to do |format|
      if @excecao.update(excecao_params)
        format.html { redirect_to @excecao, notice: 'Excecao was successfully updated.' }
        format.json { render :show, status: :ok, location: @excecao }
      else
        format.html { render :edit }
        format.json { render json: @excecao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /excecaos/1
  # DELETE /excecaos/1.json
  def destroy
    @excecao.destroy
    respond_to do |format|
      format.html { redirect_to excecaos_url, notice: 'Excecao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_excecao
      @excecao = Excecao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def excecao_params
      params.require(:excecao).permit(:data, :hora)
    end
end
