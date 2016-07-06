class RemoveUserIdToAluguels < ActiveRecord::Migration
  def change
    remove_column :aluguels, :user_id, :integer
  end
end
