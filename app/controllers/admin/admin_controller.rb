class Admin::AdminController < ApplicationController

	layout 'admin'

	before_action :authenticate_user!
	before_action :check_admin

	def check_admin
		return true if current_user.isAdmin?

		if current_user
			flash[:alert] = "You are not authorised as admin."
			redirect_to root_path			
		else
		   redirect_to new_user_session_path
		end
	end

	def index

	end
end