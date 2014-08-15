class StaticPagesController < ApplicationController
  def cyvsa_home
  	@homes = Home.all
    @projects = Project.order("id DESC")
    @services = Service.all
	end
end
