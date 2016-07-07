class AluguelsController < ApplicationController

	before_action :set_aluguel, only: [:show]

	before_action :require_user
	

	def index
		@aluguels = Aluguel.paginate(page: params[:page], per_page: 3)
	end
	def new

		@aluguel  = Aluguel.new
		@aluguel.document.build

	end

	def create

		@aluguel = Aluguel.new(aluguel_params)
		@aluguel.user = current_user


		if @aluguel.save
			flash[:notice] = "O Contrato de Aluguel foi salvo com sucesso"
			redirect_to contractsHome_path(@aluguel)
		else
			render 'pages/rent'
		end

	end

	def show
		
	end

	private

	def aluguel_params
		params.require(:aluguel).permit(:imovel, :local, :valor, :locador, :locatario, document_attributes: [:name, :tag, :typeDoc, :uploaded_file])
	end

	def set_aluguel
		@aluguel = Aluguel.find(params[:id])	
	end

	def require_same_user
		if current_user != @aluguel.user
			flash[:danger] = "Voce do pode deletar seus documentos"
			redirect_to root_path
		end
	end

end
