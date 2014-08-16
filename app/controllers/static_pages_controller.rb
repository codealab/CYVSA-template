#encoding: utf-8
class StaticPagesController < ApplicationController

  def cyvsa_home
  	@homes = Home.all
    @projects = Project.order("id DESC")
  end

end