class Document < ActiveRecord::Base

    belongs_to :aluguel
    belongs_to :buysell
    belongs_to :service
    belongs_to :other
    belongs_to :payment

	validates :name, presence: true, length: {minimum: 3, maximum: 25}
	validates :tag, presence: true
	has_attached_file :uploaded_file              
    validates_attachment_size :uploaded_file, :less_than => 10.megabytes
    validates_attachment_presence :uploaded_file 
    validates_attachment_content_type :uploaded_file, :content_type => ["application/pdf","application/vnd.ms-excel",     
             "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
             "application/msword", 
             "application/vnd.openxmlformats-officedocument.wordprocessingml.document", 
             "text/plain"],
              :message => ', apenas arquivos do tipo PDF, EXCEL, WORD or TEXT '
    

end