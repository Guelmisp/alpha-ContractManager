class Document < ActiveRecord::Base

	validates :nome, presence: true, length: {minimum: 3, maximum: 20}

end