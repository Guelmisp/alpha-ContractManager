class DocumentsController < ApplicationController

	def new
		@document = Document.new
	end
	def create
		@document = Document.new(article_params)
		@document.save
		redirect_to document_show(@document)
	end

private 
	def article_params
		params.require(:document).permit(:nome, :tipo)
	end
 
end