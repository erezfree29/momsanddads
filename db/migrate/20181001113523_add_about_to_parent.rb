class AddAboutToParent < ActiveRecord::Migration[5.2]
  def change
    add_column :parents, :about, :string
  end
end
