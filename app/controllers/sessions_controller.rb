class SessionsController < ApplicationController

	def new

	end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			session[:user_id] = user.id
			flash[:success] = "Você está logado no sistema"
			redirect_to user_path(user)
		
		else
			flash.now[:danger] = "Nome ou Senha incorretos"
			render 'new'
		end

	end
	
	def destroy
		session[:user_id] = nil
		flash[:success] = "Você saiu do sistema"
		redirect_to root_path

	end
 
end