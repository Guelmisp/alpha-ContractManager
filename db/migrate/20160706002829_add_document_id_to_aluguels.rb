class AddDocumentIdToAluguels < ActiveRecord::Migration
  def change
    add_column :aluguels, :document_id, :integer
  end
end
