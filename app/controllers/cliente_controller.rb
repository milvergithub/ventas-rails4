class ClienteController < ApplicationController
  def index
    @clientes=Cliente.paginate(:page => params[:page], :per_page => 5)
  end

  def new
    @cliente=Cliente.new
  end

  def create
    @cliente=Cliente.new(cliente_params);
    if @cliente.save
      redirect_to(@cliente)
    else
      render :new
    end
  end

  def show
    @cliente=Cliente.find(params[:id])
  end

  def edit
    @cliente=Cliente.find(params[:id])
  end

  def update
    @cliente=Cliente.find(params[:id])
    if @cliente.update(cliente_params)
      redirect_to cliente_path
    else
      render :edit
    end
  end

  def destroy
  end
  def cliente_params
    params.require(:cliente).permit(:nombre,:ape_pat,:ape_mat)
  end
end
