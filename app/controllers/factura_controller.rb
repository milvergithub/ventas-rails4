class FacturaController < ApplicationController
  def index
    @facturas=Factura.paginate(:page => params[:page], :per_page => 5)
  end

  def new
  end

  def create
  end

  def show
    @factura=Factura.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
