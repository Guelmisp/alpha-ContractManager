class OthersController < ApplicationController

	before_action :set_other, only: [:show]
	before_action :require_user
	

	def index
		@others = Other.paginate(page: params[:page], per_page: 3)
	end
	def new

		@other  = Other.new
		@other.document.build

	end

	def create

		@other = Other.new(other_params)
		@other.user = current_user


		if @other.save
			flash[:notice] = "O Contrato de compra e venda foi salvo com sucesso"
			redirect_to contractsHome_path(@other)
		else
			render 'pages/other'
		end

	end

	def show
		
	end

	private

	def other_params
		params.require(:other).permit(:descricao, document_attributes: [:name, :tag, :typeDoc, :uploaded_file])
	end

	def set_other
		@other = Other.find(params[:id])	
	end

	def require_same_user
		if current_user != @other.user
			flash[:danger] = "Voce do pode deletar seus documentos"
			redirect_to root_path
		end
	end

end
