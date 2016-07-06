class PagesController < ApplicationController

	def home
	end

	def contractsHome

	end

	def rent
		@document  = Document.new

		@aluguel  = Aluguel.new
		@aluguels = Aluguel.paginate(page: params[:page], per_page: 5)
	end

	def buySell
	end

	def service
	end

	def other
	end

	def payments
	end

	def protocols
	end

	def contractsAbout
	end
end