class PagesController < ApplicationController

	def home
	end
	def contractsHome
		@document  = Document.new
		@documents = Document.all
	end
	def contractsAbout
	end
end