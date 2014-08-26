class YearsController < ApplicationController
	def index
		@years = Year.order(:date )
	end
	def index_admin
		
	end

	def show
		@year = Year.find(params[:id])

	end

	def new
		@year = Year.new
	end

	def create
		@year = Year.new(year_params)
		if @year.save
			flash[:success] = "cargado exitosamente."
     render 'edit'
		else
			render :action => 'new'
		end
	end

	def edit
		@year = Year.find(params[:id])

	end

	def update

		@year = Year.find(params[:id])
		if @year.update_attributes(year_params)
			flash[:success]= "creada exitosamente"
			redirect_to years_url

		else
			render 'edit'
		end
	end

	def destroy
		@year = Year.find(params[:id])
		@year.destroy
		flash[:success] = "Borrado exitosamente."
		redirect_to @year
	end

	private
	def year_params
		params.require(:year).permit(:title, :text, :image, :date)


	end

end
