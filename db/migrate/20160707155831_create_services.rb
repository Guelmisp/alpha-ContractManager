class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :contratante
      t.string :contratado
      t.float :valor
      t.string :servico
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
