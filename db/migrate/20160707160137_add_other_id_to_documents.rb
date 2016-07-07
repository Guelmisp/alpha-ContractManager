class AddOtherIdToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :other_id, :integer
  end
end
