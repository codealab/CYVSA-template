class DashboardsController < ApplicationController
	layout 'dashboard'
  def index
  	@home = Home.first

  end
   
end
