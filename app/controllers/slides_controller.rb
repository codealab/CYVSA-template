class SlidesController < ApplicationController
	def index
		@slides = Slide.all
		
	end
	def show
		@slide = Slide.find(params[:id])
		
	end

	 def new
	 	@service = Service.find(params[:service_id])
	 	@slide = @service.slides.build
  end
  def create
  	@service = Service.find(params[:service_id])
	 	@slide = @service.slides.build(slide_params)
  	if @service.save
  		flash[:success]= "Creado exitosamente."
  		redirect_to service_path(@service)
  	else
  		render 'new'
  	end
  end

  def edit
  	@slide = Slide.find(params[:id])
  	
  end

  def update
@slide = Slide.find(params[:id])
if @slide.update_attributes(slide_params)
	flash[:success]= "actualizado exitosamente."
  		redirect_to services_url

	
else
	render 'new'
end
  	
  end

  def destroy

		@slide = Slide.find(params[:id])
		@slide.destroy
		flash[:success] = "Borrado exitosamente."
		redirect_to services_url
	end
private
def slide_params
	params.require(:slide).permit(:image, :title, :text)
	
end
 
end
