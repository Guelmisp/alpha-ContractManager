class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
    	t.string    :name
    	t.string	:tag
    	t.string    :typeDoc
    	t.datetime  :created_at
    	t.datetime  :updated_at
    end
  end
end
