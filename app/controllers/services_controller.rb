class ServicesController < ApplicationController

  def edit
    @service = Service.find(params[:id])

  end

  def update

    @service = Service.find(params[:id])
    if @service.update_attributes(service_params)
      flash[:success]= "Actualización exitosa"
      redirect_to dashboard_path



    else
      render 'edit'

    end

  end

  private
  def service_params
    params.require(:service).permit(:icon, :title, :content)

  end


end
