class Other < ActiveRecord::Base
	
	belongs_to :user 

	has_one :document
	accepts_nested_attributes_for :document

	validates :descricao, presence: true
 	validates :user_id, presence: true
end

