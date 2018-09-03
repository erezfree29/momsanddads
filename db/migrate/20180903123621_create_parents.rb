class CreateParents < ActiveRecord::Migration[5.2]
  def change
    create_table :parents do |t|
      t.string :name
      t.string :sexual_orientation
      t.string :photo
      t.string :country
      t.string :town

      t.timestamps
    end
  end
end
