class AddOrientationToParent < ActiveRecord::Migration[5.2]
  def change

    add_column :parents, :orientation, :string

  end
end
