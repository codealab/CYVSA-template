class YearsController < ApplicationController
	def index
		if params[:tipo]
			@years = Year.order(:date).where(:tipo => 'Reconocimiento')

		else

			@years = Year.order(:date).where(:tipo => 'Historia')
		end
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

				if @year.tipo == 'Reconocimiento'
					redirect_to years_path(tipo: 'Reconocimiento')
					
				else
				redirect_to years_path
				end

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
			if @year.tipo == 'Historia'
				redirect_to years_url
			else
				redirect_to years_url(tipo: 'Reconocimiento')
			end

		else
			render 'edit'
		end
	end

	def destroy
		@year = Year.find(params[:id])
		@year.destroy
		flash[:success] = "Borrado exitosamente."

				if @year.tipo == 'Reconocimiento'
					redirect_to years_path(tipo: 'Reconocimiento')
					
				else
				redirect_to years_path
				end
	end

	private
	def year_params
		params.require(:year).permit(:title, :text, :image, :date, :tipo)


	end

end
