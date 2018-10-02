class RemoveCountirFromParent < ActiveRecord::Migration[5.2]
  def change
    remove_column :parents, :countrie_id
    add_column :parents, :country, :string
  end
end
