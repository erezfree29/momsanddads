class RemoveUsersIdfromParentsAgain < ActiveRecord::Migration[5.2]
  def change
    remove_column :parents, :users_id
    add_reference :parents, :user, foreign_key: true
  end
end
