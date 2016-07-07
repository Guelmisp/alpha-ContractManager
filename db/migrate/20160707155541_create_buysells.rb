class CreateBuysells < ActiveRecord::Migration
  def change
    create_table :buysells do |t|
      t.string :vendedor
      t.string :comprador
      t.float :valor
      t.string :item
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
