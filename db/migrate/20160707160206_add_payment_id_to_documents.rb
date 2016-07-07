class AddPaymentIdToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :payment_id, :integer
  end
end
