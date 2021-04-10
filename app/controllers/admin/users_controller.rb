class Admin::UsersController < Admin::ApplicationController
    before_action :require_super_admin 
    
    def index
        @users = User.all        
    end    
    def edit
        @user = User.find_by id: params[:id]
    end   
    def update
        byebug
        @user = User.find_by id: params[:id]
        if @user.update! role_id: user_params[:role_id].to_i
            redirect_to admin_users_path
        end   
    end    
    private
    def user_params
        params.require(:user).permit(:role_id) 
    end    
    def  require_super_admin
        flash[:danger] = "ban khong co quyen truy cap vao chuc nang nay"
        redirect_to root_path unless current_user.role.role_name == "super_admin"
    end    
    

end    