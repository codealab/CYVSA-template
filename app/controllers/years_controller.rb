class YearsController < ApplicationController
  def index
  	@years = Year.all
  end

  def show
  end

  def create
  end

  def new
  end
end
