class DocumentsController < ApplicationController

	before_action :set_document, only: [:edit, :update, :show, :destroy]

	def index
		@documents = Document.all
	end

	def new
		@document = Document.new
	end

	def edit

	end

	def create
		@document = Document.new(document_params)
		@document.user = User.first
		if @document.save
			flash[:notice] = "O Documento foi salvo com sucesso"
			redirect_to contractsHome_path(@document)
		else
			render 'new'
		end
	end

	def update
		
		if @document.update(document_params)
			flash[:notice] = "O Documento foi atualizado com sucesso"
			redirect_to contractsHome_path(@document)
		else
			render 'edit'
		end
	end

	def show
		
	end

	def destroy
	    @document.destroy

	    respond_to do |format|
	     format.html { redirect_to contractsHome_path }
	     format.json { head :no_content }
	    end
	  end

	def destroy_multiple
	    Document.destroy(params[:documents_ids])
	    respond_to do |format|
	      format.html { redirect_to contractsHome_path }
	      format.json { head :no_content }
	    end
	end

	private
		def set_document
			@document = Document.find(params[:id])	
		end
		def document_params
			params.require(:document).permit(:name, :tag, :typeDoc, :uploaded_file)
		end
 
end