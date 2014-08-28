class StaticPagesController < ApplicationController

  def cyvsa_home
  	@homes = Home.all
    @projects = Project.order("id DESC")
   
	end

	def recognition
		 @years = Year.order(:date).where(:tipo => 'Reconocimiento')
	end



end
