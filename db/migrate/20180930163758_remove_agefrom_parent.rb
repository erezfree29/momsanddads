class RemoveAgefromParent < ActiveRecord::Migration[5.2]
  def change
    remove_column :parents, :age
    add_column :parents, :age, :string
  end
end
