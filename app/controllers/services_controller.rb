class ServicesController < ApplicationController

	before_action :set_buysell, only: [:show]
	before_action :require_user
	

	def index
		@services = Service.paginate(page: params[:page], per_page: 3)
	end
	def new

		@service  = Service.new
		@service.document.build

	end

	def create

		@service = Service.new(service_params)
		@service.user = current_user


		if @service.save
			flash[:notice] = "O Contrato de compra e venda foi salvo com sucesso"
			redirect_to contractsHome_path(@service)
		else
			render 'new'
		end

	end

	def show
		
	end

	private

	def service_params
		params.require(:service).permit(:contratante, :contratado, :valor, :servico, document_attributes: [:name, :tag, :typeDoc, :uploaded_file])
	end

	def set_service
		@service = Service.find(params[:id])	
	end

	def require_same_user
		if current_user != @service.user
			flash[:danger] = "Voce do pode deletar seus documentos"
			redirect_to root_path
		end
	end

end
