class BuysellsController < ApplicationController

	before_action :set_buysell, only: [:show]
	before_action :require_user
	

	def index
		@buysells = Buysell.paginate(page: params[:page], per_page: 3)
	end
	def new

		@buysell  = Buysell.new
		@buysell.document.build

	end

	def create

		@buysell = Buysell.new(buysell_params)
		@buysell.user = current_user


		if @buysell.save
			flash[:notice] = "O Contrato de compra e venda foi salvo com sucesso"
			redirect_to contractsHome_path(@buysell)
		else
			render 'new'
		end

	end

	def show
		
	end

	private

	def buysell_params
		params.require(:buysell).permit(:vendedor, :comprador, :valor, :item, document_attributes: [:name, :tag, :typeDoc, :uploaded_file])
	end

	def set_buysell
		@buysell = Buysell.find(params[:id])	
	end

	def require_same_user
		if current_user != @service.user
			flash[:danger] = "Voce do pode deletar seus documentos"
			redirect_to root_path
		end
	end

end
