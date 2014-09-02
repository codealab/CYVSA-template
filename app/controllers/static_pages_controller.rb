class StaticPagesController < ApplicationController
	skip_before_action :require_login, only: [:cyvsa_home, :recognition]
  def cyvsa_home
  	@homes = Home.all
    @projects = Project.order("id DESC")
   
	end

	def recognition
		 @years = Year.order(:date).where(:tipo => 'Reconocimiento')
	end



end
