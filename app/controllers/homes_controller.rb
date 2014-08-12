class HomesController < ApplicationController
  
  def index
    @homes = Home.all
    @projects = Project.order("id DESC").limit(2)

  end



  def show
    @home = Home.find(params[:id])

  end

  def new
    @home = Home.new

  end

  def edit
    @home = Home.find(params[:id])

  end

  def update
   
    @home = Home.find(params[:id])
    if @home.update_attributes(home_params)
      flash[:success]= "image updated"

      if params[:home][:show]
        redirect_to @home
      else

        redirect_to edit_home_path(@home)
      end

    else
      render 'edit'
    end

  end

  def create
    @home = Home.new(home_params)
    if @home.save
      flash[:success] = "Successfully created."
      redirect_to @home
    else
      render :action => 'new'
    end
  end

  def destroy
    @home = Home.find(params[:id])
    @home.destroy
    flash[:success] = "Successfully destroyed image."
    redirect_to homes_url
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
      :promocional,
      :about,
      :address,
      :telephone,
      :fax,
    :email)

  end

end
