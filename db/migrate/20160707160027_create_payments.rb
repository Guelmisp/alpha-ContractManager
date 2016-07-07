class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :local
      t.float :valor
      t.string :tipo
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
