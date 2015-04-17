class UsuarioController < ApplicationController

  def index
    @usuarios=Usuario.paginate(:page => params[:page], :per_page => 5)
  end

  def new
    @usuario=Usuario.new
  end

  def create
    
  end

  def show
    @usuario=Usuario.find(params[:id])
  end

  def edit
    @usuario=Usuario.find(params[:id])
  end

  def update
  end

  def destroy
  end
end
