class AddAgeToParent < ActiveRecord::Migration[5.2]
  def change
    add_column :parents, :age, :string
  end
end
