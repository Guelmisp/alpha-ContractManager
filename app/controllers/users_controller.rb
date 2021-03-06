class UsersController < ApplicationController

	before_action :set_user, only: [:edit, :update, :show]
	before_action :require_same_user, only: [:edit, :update]

	def index
		@users = User.paginate(page: params[:page], per_page: 3)
	end

	def new
		@user = User.new

	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:notice] = "Bem vindo"
			redirect_to login_path
		else
			render 'new'
		end
	end

	def edit

	end

	def update
		if @user.update(user_params)
			flash[:notice] = "Usuário atualizado com sucesso!"
			redirect_to contractsHome_path
		else
			render 'new'
		end

	end

	def show
		
		@user_documents = @user.aluguels.paginate(page: params[:page], per_page: 3)

	end


	private
	def user_params
		params.require(:user).permit(:username, :email, :password)
	end

	def set_user
		@user = User.find(params[:id])
	end
	def require_same_user
		if  current_user != @user
			flash[:dager] = "Voce so pode editar sua propria conta"
			redirect_to root_path
		end
	end


end