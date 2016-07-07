class PaymentsController < ApplicationController

	before_action :set_payment, only: [:show]
	before_action :require_user
	

	def index
		@payments = Payment.paginate(page: params[:page], per_page: 3)
	end
	def new

		@payment  = Payment.new
		@payment.document.build

	end

	def create

		@payment = Payment.new(payment_params)
		@payment.user = current_user


		if @payment.save
			flash[:notice] = "O Pagamento foi salvo com sucesso"
			redirect_to contractsHome_path(@payment)
		else
			render 'pages/payment'
		end

	end

	def show
		
	end

	private

	def payment_params
		params.require(:payment).permit(:local, :valor, :tipo, document_attributes: [:name, :tag, :typeDoc, :uploaded_file])
	end

	def set_payment
		@payment = Payment.find(params[:id])	
	end

	def require_same_user
		if current_user != @payment.user
			flash[:danger] = "Voce do pode deletar seus documentos"
			redirect_to root_path
		end
	end

end
