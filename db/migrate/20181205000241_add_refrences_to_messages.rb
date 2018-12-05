class AddRefrencesToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :receving_parent_id, :integer, index: true
    add_foreign_key :messages, :parents, column: :receving_parent_id
    add_column :messages, :sending_parent_id, :integer, index: true
    add_foreign_key :messages, :parents, column: :sending_parent_id
  end
end
