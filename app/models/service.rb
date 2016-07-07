class Service < ActiveRecord::Base
	
	belongs_to :user 

	has_one :document
	accepts_nested_attributes_for :document

	validates :contratante, presence: true
	validates :contratado, presence: true
	validates :valor, :presence => true, 
              :format => { :with => /\A(\$)?(\d+)(\.|,)?\d{0,2}?\z/ }
    validates :servico, presence: true
 	validates :user_id, presence: true
end


