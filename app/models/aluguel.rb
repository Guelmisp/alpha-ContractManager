class Aluguel < ActiveRecord::Base
	
	belongs_to :user 

	has_one :document
	accepts_nested_attributes_for :document

	validates :imovel, presence: true
	validates :local, presence: true, length: {minimum: 3, maximum: 25}
	validates :valor, :presence => true, 
              :format => { :with => /\A(\$)?(\d+)(\.|,)?\d{0,2}?\z/ }
    validates :locador, presence: true
    validates :locatario, presence: true
 	validates :user_id, presence: true
end
