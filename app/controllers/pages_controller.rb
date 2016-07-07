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
	end

	def other
	end

	def payment
	end

	def protocol
	end

	def contractsAbout
	end
end