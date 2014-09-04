class MailingsController < ApplicationController
	skip_before_action :require_login, only: [:new, :create]
  def index
  end

  def new
  	@mailing = MailingForm.new
  end

  def create
  	@mailing = MailingForm.new
  	if @mailing.submit(params[:mailing_form])
  		Email.send_email(@mailing).deliver
  		flash[:success]= "Email creado exitosamente "
  		redirect_to root_path
  	else
  		render 'new'
  	end
  end
end
