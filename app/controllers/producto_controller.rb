class ProductoController < ApplicationController
  def index
    @productos=Producto.paginate(:page => params[:page], :per_page => 10)
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
