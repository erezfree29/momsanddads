class RefrenceToParent < ActiveRecord::Migration[5.2]
  def change
    add_reference :parents, :sexualorientation, foreign_key: true
  end
end
