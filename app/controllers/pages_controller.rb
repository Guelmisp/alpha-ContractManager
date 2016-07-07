class PagesController < ApplicationController

	def home
	end

	def contractsHome

	end

	def rent
		@aluguel  = Aluguel.new
		@aluguels = Aluguel.paginate(page: params[:page], per_page: 5)
	end

	def buysell
		@buysell  = Buysell.new
		@buysells = Buysell.paginate(page: params[:page], per_page: 5)
	end

	def service
		@service  = Service.new
		@services = Service.paginate(page: params[:page], per_page: 5)
	end

	def other
		@other  = Other.new
		@others = Other.paginate(page: params[:page], per_page: 5)
	end

	def payment
		@payment  = Payment.new
		@payments = Payment.paginate(page: params[:page], per_page: 5)
	end

	def protocol
	end

	def contractsAbout
	end
end