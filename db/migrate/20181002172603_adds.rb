class Adds < ActiveRecord::Migration[5.2]
  def change
    add_column :parents, :sorientation, :string
  end
end
