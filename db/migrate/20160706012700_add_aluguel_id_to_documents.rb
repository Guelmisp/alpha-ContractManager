class AddAluguelIdToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :aluguel_id, :integer
  end
end
