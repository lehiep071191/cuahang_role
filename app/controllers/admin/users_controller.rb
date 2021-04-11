class Admin::UsersController < Admin::ApplicationController
    before_action :require_admin 
    
    def index
        if current_user.role.role_name  == "super_admin"
            @users = User.joins('inner join roles on users.role_id = roles.id where roles.role_name != "super_admin"')  
        else    
            # sql = "select * from users join roles on users.role_id = roles.id where roles.role_name = 'normal'"
            @users = User.joins('inner join roles on users.role_id = roles.id where roles.role_name != "super_admin" and roles.role_name != "admin"')  
        end    
    end    
    def edit
        @user = User.find_by id: params[:id]
    end   
    def update

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
        unless current_user && current_user.role.role_name == "super_admin"
            flash[:danger] = "ban khong co quyen truy cap vao chuc nang nay"
            redirect_to root_path 
        end
    end    
    

end    