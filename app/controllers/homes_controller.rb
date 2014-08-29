class HomesController < ApplicationController
  before_action :signed_in_user
  def dashboard
  end
  def edit
    @home = Home.find(params[:id])

  end

  def update

    @home = Home.find(params[:id])
    if @home.update_attributes(home_params)
      flash[:success]= "creado exitosamente!"
      redirect_to  dashboard_path
      # if params[:home][:show]
      #   redirect_to @home
      # else
      #   redirect_to edit_home_path(@home)
      # end

    else
      render 'edit'
  
    end

  end

  private
  def home_params
    params.require(:home).permit(
      :logo,
      :slider_image_one,
      :slider_title_one,
      :slider_text_one,
      :slider_image_two,
      :slider_title_two,
      :slider_text_two,
      :slider_image_three,
      :slider_title_three,
      :slider_text_three,
      :title_promocional,
      :text_promocional,
      :title_button_promocional,
      :title_history,
      :text_history,
      :title_button_history,
      :title_contact,
      :address,
      :telephone_one,
      :telephone_two,
      :fax,
      :email,
      :title_recognition,
      :text_recognition,
      :title_office,
      :text_office,
      :title_button_office,
      :title_job,
      :text_job,
    :title_button_job,)

  end
end
