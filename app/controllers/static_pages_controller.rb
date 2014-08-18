class StaticPagesController < ApplicationController
  def cyvsa_home
  	@homes = Home.all
    @projects = Project.order("id DESC")
    
	end

	def index_year
		
		
	end


end
