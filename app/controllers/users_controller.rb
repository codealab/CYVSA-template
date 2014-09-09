class UsersController < ApplicationController
  # before_action :signed_in_user
  before_action :correct_user,   only: [:edit, :update, :destroy]
  #before_action :admin_user,     only: [:edit, :update, :create, :destroy]

  def index
    @users = User.all
    
  end
  def show
    @user = User.find(params[:id])
  end
  def new
    @user = User.new

  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Registro actualizado"
      redirect_to users_path

    else
      render 'edit'
    end
  end
  def create
    @user = User.new(user_params)
    if @user.save
      
      flash[:success] = "Welcome !"
      redirect_to users_path
    else
      render 'new'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:success] = "Borrado exitosamente."
    redirect_to @user
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation, :admin)
  end

  # def signed_in_user
  #     unless signed_in?
  #       store_location
  #       redirect_to admin_url, notice: "Please sign in."
  #     end
   # end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(users_url) unless current_user?(@user) || current_user.admin?
  end

  # def admin_user
  #   @user = User.find(params[:id])
  #   redirect_to(users_url) unless current_user.admin?
  # end
end
