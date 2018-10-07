class AddCoordinatesToParents < ActiveRecord::Migration[5.2]
  def change
    add_column :parents, :latitude, :float
    add_column :parents, :longitude, :float
  end
end
