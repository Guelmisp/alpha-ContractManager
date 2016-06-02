class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
    	t.string    :nome
    	t.string    :tipo
    	t.datetime  :created_at
    	t.datetime  :updated_at
    end
  end
end
