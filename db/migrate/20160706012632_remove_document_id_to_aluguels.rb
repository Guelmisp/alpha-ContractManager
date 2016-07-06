class RemoveDocumentIdToAluguels < ActiveRecord::Migration
  def change
    remove_column :aluguels, :document_id, :integer
  end
end
