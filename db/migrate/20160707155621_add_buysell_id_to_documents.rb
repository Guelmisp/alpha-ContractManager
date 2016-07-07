class AddBuysellIdToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :buysell_id, :integer
  end
end
