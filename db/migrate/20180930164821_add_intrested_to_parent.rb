class AddIntrestedToParent < ActiveRecord::Migration[5.2]
  def change
    add_column :parents, :intrested, :string
  end
end
