class CreateAluguels < ActiveRecord::Migration
  def change
    create_table :aluguels do |t|
      t.string :imovel
      t.string :local
      t.float :valor
      t.string :locador
      t.string :locatario
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
