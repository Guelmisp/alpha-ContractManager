class AddUserIdToAluguels < ActiveRecord::Migration
  def change
    add_column :aluguels, :user_id, :integer
  end
end
