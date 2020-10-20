class SessionsController < ApplicationController
	def log_in
	    validate_user = User.where(name: params[:user][:email])
	  if validate_user.empty?
	  	 redirect_to users_path
	  else
	    session[:name] = params[:user][:name]
	    session[:email] = params[:user][:email]
	    session[:user_id] = validate_user[0].id

	    redirect_to events_path
	  end
	end 

	def log_out
	  session.destroy
	  redirect_to users_path
	end
end
