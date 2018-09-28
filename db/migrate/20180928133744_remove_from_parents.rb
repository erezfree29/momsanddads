class RemoveFromParents < ActiveRecord::Migration[5.2]
  def change
    remove_column :parents, :orientation
    remove_column :parents, :sexual_orientation
    # add_reference :sexual_orientation, foreign_key: true
  end
end
