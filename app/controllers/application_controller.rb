class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :require_login
  protect_from_forgery with: :exception
  include HomeHelper
  include ProjectHelper
  include SessionsHelper
  include ServicesHelper
  include YearsHelper

  def require_login
  	unless signed_in?
  		flash[:danger]= "Inicia seción"
  		redirect_to admin_path
  	end
  end
end
