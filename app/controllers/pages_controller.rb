class PagesController < ApplicationController

	def home
	end
	def contractsHome
		@document  = Document.new
		@documents = Document.paginate(page: params[:page], per_page: 5)
	end
	def contractsAbout
	end
end