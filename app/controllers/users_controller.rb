class UsersController < ApplicationController
  before_action :find_user, only: [:show,:edit,:update]
  before_action :check_signin?, only: [:new,:create] 
  before_action :check_logged? , only: [:show,:edit,:update]
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    byebug
    if @user.role_id == 3
      if @user.save!
        log_in(@user)
        redirect_to user_path(@user)
      else
        redirect_to new_user_path
      end  
    else
      redirect_to new_user_path
    end
  end 
  def show
  end
  def edit

  end   
  private 
  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation, :role_id)
  end 
  def find_user
    @user = User.find_by(id: params[:id])
  end  
  def check_signin?
    flash[:noitice] = "ban da dang nhap"
    redirect_to root_url if logged_in?
   
  end  
end
