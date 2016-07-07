class AddServiceIdToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :service_id, :integer
  end
end
