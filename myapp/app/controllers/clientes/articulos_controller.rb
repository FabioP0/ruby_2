class Clientes::ArticulosController < ApplicationController
  def index
    @cliente = Cliente.find(params[:cliente_id])
    @articulos = @cliente.articulos
  end

  def show
  end

  def new
    @cliente = Cliente.find(params[:cliente_id])
    @articulo = @cliente.articulos.new
  end

  def edit
  end
end
