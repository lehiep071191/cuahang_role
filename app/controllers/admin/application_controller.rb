class Admin::ApplicationController < ActionController::Base
    include SessionsHelper


    def require_admin
        
        redirect_to root_url unless current_user.role.role_name == "admin" || current_user.role.role_name == "super_admin"

    end    
end
