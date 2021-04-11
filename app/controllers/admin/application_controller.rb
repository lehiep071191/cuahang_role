class Admin::ApplicationController < ActionController::Base
    include SessionsHelper


    def require_admin
        unless  current_user &&  (current_user.role.role_name == "admin" || current_user.role.role_name == "super_admin")
            flash[:danger] = "ban khong co quyen truy cap vao chuc nang nay"
            redirect_to root_url 
        end

    end    
end
