class NoticesController < ApplicationController
	before_action :signed_in_user
	def index
		@notices = Notice.all
	end



	def new
		@notice = Notice.new
	end


	def create
		@notice = Notice.new(notice_params)
		if @notice.save
			flash[:success]= "cargada exitosamente."
			render 'edit'

		else
			render :action => 'new'
		end
	end

	def edit
		@notice = Notice.find(params[:id])
	end


	def update
		@notice = Notice.find(params[:id])
		if @notice.update_attributes(notice_params)
			flash[:success] = "Creado exitosamente."
			redirect_to notices_url

		else
			render 'edit'
		end
	end
	def destroy
		@notice = Notice.find(params[:id])
		@notice.destroy
		flash[:success] = "Borrado exitosamente."
		redirect_to @notice
	end


	private
	def notice_params
		params.require(:notice).permit([:title,:text,:image])
	end

end
