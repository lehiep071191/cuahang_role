class SessionsController < ApplicationController
  before_action :check_logged_in ,only: :new
	def new
	end	
	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			if user.role.role_name != "band"
				log_in user
				params[:session][:remember_me] == '1' ? remember(user) : forget(user)
				redirect_to user_path(user)
			else
				flash[:danger] = "tai khoan nay da bi khoa" 	
				redirect_to root_path
			end			
		else
			flash.now[:danger] = 'Invalid email/password combination'
			render 'new'
		end
	end

	def destroy
		log_out if logged_in?
		redirect_to root_url
	end
	private
	def check_logged_in
		if logged_in?
			flash[:danger] = "you are logging"
			redirect_to root_path 
		end
	end
end
