class Payment < ActiveRecord::Base
	
	belongs_to :user 

	has_one :document
	accepts_nested_attributes_for :document

	validates :local, presence: true
	validates :valor, :presence => true, 
              :format => { :with => /\A(\$)?(\d+)(\.|,)?\d{0,2}?\z/ }
    validates :tipo, presence: true
 	validates :user_id, presence: true
end

