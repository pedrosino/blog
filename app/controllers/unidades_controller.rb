class UnidadesController < ApplicationController

  def index
    @unidades = Unidade.all.order(:sigla)
  end

  def new
    @unidade = Unidade.new
  end

  def create
    @unidade = Unidade.new(unidade_params)

    if @unidade.save
      flash[:success] = "Unidade criada com sucesso"
      redirect_to unidades_path
    else
      flash[:danger] = "Falha ao salvar"
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

  private
    def unidade_params
      params.require(:unidade).permit(:sigla, :nome)
    end

end
