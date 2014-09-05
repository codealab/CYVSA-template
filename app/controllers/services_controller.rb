class ServicesController < ApplicationController
  before_action :signed_in_user
  def index
    @services = Service.all

  end

  def show
    @service = Service.find(params[:id])

  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      flash[:success] = "Creado exitosamente."
      redirect_to services_url
    else
      render 'new'
    end
  end

  def edit
    @service = Service.find(params[:id])

  end

  def update

    @service = Service.find(params[:id])
    if @service.update_attributes(service_params)
      flash[:success]= "Actualización exitosa"
      redirect_to services_url

    else
      render 'edit'
    end
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
    flash[:success] = "Borrado exitosamente."
    redirect_to @service
  end

  private
  def service_params
    params.require(:service).permit(:icon, :title, :content)

  end


end
