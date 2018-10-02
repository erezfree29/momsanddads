class RemoveSorientationFromParent < ActiveRecord::Migration[5.2]
  def change
    remove_column :parents, :sexualorientation_id
  end
end
