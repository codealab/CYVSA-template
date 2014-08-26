class SlidesController < ApplicationController
 def index
    @slides = Slide.all
    
  end

  def show
  @slide = Slide.find(params[:id])
    
  end

  def new
    @slide = Slide.new
  end

   def create
    @slide = Slide.new(slide_params)
    if @slide.save
      flash[:success] = "cargado exitosamente."
     render 'edit'
    else
      render :action => 'new'
    end
  end

  def edit
    @slide = Slide.find(params[:id])

  end

  def update

    @slide = Slide.find(params[:id])
    if @slide.update_attributes(slide_params)
      flash[:success]= "creada exitosamente"
      redirect_to slides_url

    else
      render 'edit'
    end
  end

  def destroy
    @slide = Slide.find(params[:id])
    @slide.destroy
    flash[:success] = "Borrado exitosamente."
    redirect_to @slide
  end

  private
  def slide_params
    params.require(:slide).permit(:title, :text, :image, :service_id)
  end
end
