class ApplicationController < ActionController::Base
    include SessionsHelper

    def check_logged?
        redirect_to root_url unless logged_in?
    end

end
