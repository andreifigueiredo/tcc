class ObjsessaosController < ApplicationController
  before_action :set_objsessao, only: [:show, :edit, :update, :destroy]

  # GET /objsessaos
  # GET /objsessaos.json
  def index
    @objsessaos = Objsessao.all
  end

  # GET /objsessaos/1
  # GET /objsessaos/1.json
  def show
  end

  # GET /objsessaos/new
  def new
    @objsessao = Objsessao.new
  end

  # GET /objsessaos/1/edit
  def edit
  end

  # POST /objsessaos
  # POST /objsessaos.json
  def create
    @objsessao = Objsessao.new(objsessao_params)

    respond_to do |format|
      if @objsessao.save
        format.html { redirect_to @objsessao, notice: 'Objsessao was successfully created.' }
        format.json { render :show, status: :created, location: @objsessao }
      else
        format.html { render :new }
        format.json { render json: @objsessao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /objsessaos/1
  # PATCH/PUT /objsessaos/1.json
  def update
    respond_to do |format|
      if @objsessao.update(objsessao_params)
        format.html { redirect_to @objsessao, notice: 'Objsessao was successfully updated.' }
        format.json { render :show, status: :ok, location: @objsessao }
      else
        format.html { render :edit }
        format.json { render json: @objsessao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /objsessaos/1
  # DELETE /objsessaos/1.json
  def destroy
    @objsessao.destroy
    respond_to do |format|
      format.html { redirect_to objsessaos_url, notice: 'Objsessao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_objsessao
      @objsessao = Objsessao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def objsessao_params
      params.require(:objsessao).permit(:obj_text, :sessao_id)
    end
end
