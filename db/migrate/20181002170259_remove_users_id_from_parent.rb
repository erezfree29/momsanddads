class RemoveUsersIdFromParent < ActiveRecord::Migration[5.2]
  def change
    remove_column :parents, :users_id
  end
end
