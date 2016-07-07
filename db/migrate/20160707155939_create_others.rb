class CreateOthers < ActiveRecord::Migration
  def change
    create_table :others do |t|
      t.string :descricao
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
