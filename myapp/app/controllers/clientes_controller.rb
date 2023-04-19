class ClientesController < ApplicationController
  def index
    @cliente = Cliente.all
  end

  def show
    @cliente = Cliente.find(params[:id])
  end

  def new
    @cliente = Cliente.new
  end

  def edit
    @cliente = Cliente.find(params[:id])
  end
  
  def create 
    @cliente = Cliente.new(cliente_params)
    if @cliente.save
      redirect_to cliente_path(@cliente)
    else
      render :new
    end
  end
  private 
  def cliente_params
    params.require(:cliente).permit(:nombre, :pais_id)
  end
end
